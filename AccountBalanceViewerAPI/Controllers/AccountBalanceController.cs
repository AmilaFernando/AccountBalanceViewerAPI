using Microsoft.AspNetCore.Mvc;
using AccountBalanceViewerAPI.Models;
using Microsoft.AspNetCore.Authorization;
using AccountBalanceViewerAPI.Data;
using AccountBalanceViewerAPI.Utility.CurrentAccountBalance;
using AccountBalanceViewerAPI.Shared.Dto;
using AccountBalanceViewerAPI.Utility.ImportAccountBalance;
using AccountBalanceViewerAPI.Utility.GetChartDataset;

namespace AccountBalanceViewerAPI.Controllers
{
    [Authorize]
    [Route("[controller]")]
    [ApiController]
    public class AccountBalanceController : ControllerBase
    {
        private readonly AccountBalanceRepository repository;
        private ICurrentBalanceUtility currentBalanceUtility;
        private IChartDatasetUtility getChartDatasetUtility;
        private IImportAccountBalanceUtility importAccountBalanceUtility;

        public AccountBalanceController(AccountBalanceRepository repository,
            IImportAccountBalanceUtility importBalanceUtility,
            ICurrentBalanceUtility accountBalanceUtility,
            IChartDatasetUtility getChartDatasetUtility)
        {
            this.repository = repository;
            this.currentBalanceUtility = accountBalanceUtility;
            this.getChartDatasetUtility = getChartDatasetUtility;
            this.importAccountBalanceUtility = importBalanceUtility;
        }


        [HttpGet("GetCurrentBalance")]
        public async Task<ActionResult<CurrentBalanceDto>> GetCurrentBalance()
        {
            var allBalances = await repository.GetAll();
            return currentBalanceUtility.GetAccountSummary(allBalances);

        }

        [Authorize(Roles = UserRoles.Admin)]
        [HttpPost("ImportBalances")]
        public async Task<ActionResult<ImportResponse>> ImportBalances([FromForm]int Year, [FromForm]int Month, IFormFile formFile)
        {
            if (formFile == null || formFile.Length <= 0)
            {
                return new ImportResponse()
                {
                    IsSuccess = false,
                    ErrorMessage = "Please attach a file"
                };
            }

            var allBalances = await repository.GetAll();
            if (allBalances.Any(x => x.Year == Year && x.Month == Month))
            {
                return new ImportResponse()
                {
                    IsSuccess = false,
                    ErrorMessage = "Data already exists for the given month. Please contact Administrator"
                };
            }

            try
            {
                var fileData = importAccountBalanceUtility.getFileData(formFile, Month, Year);

                if (fileData.IsSuccess)
                {
                    await repository.BulkInsert(fileData.Balances);
                    return new ImportResponse()
                    {
                        IsSuccess = true,
                    };
                }
            }catch (Exception ex)
            {
                return BadRequest(new ImportResponse()
                {
                    IsSuccess = false,
                    ErrorMessage = "An error occured. Please check again the file and Data format",  
                });
            }

            return BadRequest();
        }

        [Authorize(Roles = UserRoles.Admin)]
        [HttpGet("GetChartData/{year}")]
        public async Task<ActionResult<ChartAccountDatasetDto>> GetChartData(int year)
        {
            var allBalances = await repository.GetAll();
            return getChartDatasetUtility.gerChartDataset(allBalances, year);

        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<AccountBalance>>> Get()
        {
            return await repository.GetAll();
        }

        [HttpGet("GetByMonth")]
        public async Task<ActionResult<IEnumerable<AccountBalance>>> GetByMonth(int year, int month)
        {
            if (month < 1 || month > 12)
            {
                return new List<AccountBalance>();
            }

            var allBalances = await repository.GetAll();
            return allBalances.Where(x => x.Year == year && x.Month == month).ToList();  

        }



    }
}

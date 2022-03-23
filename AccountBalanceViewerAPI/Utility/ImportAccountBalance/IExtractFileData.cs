using AccountBalanceViewerAPI.Models;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public interface IExtractFileData
    {
        public ImportResponse getAccountBalances(IFormFile formFile, int month, int year);
    }
}

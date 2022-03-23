using AccountBalanceViewerAPI.Models;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public interface IImportAccountBalanceUtility
    {
        public ImportResponse getFileData(IFormFile formFile, int month, int year);

    }
}

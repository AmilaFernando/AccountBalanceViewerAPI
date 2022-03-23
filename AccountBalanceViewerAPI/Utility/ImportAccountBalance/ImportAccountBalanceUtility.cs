using AccountBalanceViewerAPI.Models;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public class ImportAccountBalanceUtility: IImportAccountBalanceUtility
    {

        public ImportResponse getFileData(IFormFile formFile, int month, int year)
        {
            string fileName = formFile.FileName;
            string extention = fileName.Split('.').Last();
            var importResponse = new ImportResponse();

            switch (extention)
            {
                case "csv":
                    IExtractFileData extractCsvData = new ExtractCsvData();
                    importResponse = extractCsvData.getAccountBalances(formFile, month, year);
                    break;

                case "txt":
                    IExtractFileData extractTsvData = new ExtractTsvData();
                    importResponse = extractTsvData.getAccountBalances(formFile, month, year);
                    break;
            }


            return importResponse;
        }
    }
}

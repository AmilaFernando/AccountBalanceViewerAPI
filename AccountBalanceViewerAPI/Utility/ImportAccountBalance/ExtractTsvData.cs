using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public class ExtractTsvData: IExtractFileData
    {
        public ImportResponse getAccountBalances(IFormFile formFile, int month, int year)
        {
            var importResponse = new ImportResponse();
            var accountBalances = new List<AccountBalance>();

            string[] segments;
            string line;
            var delimiters = new char[] { '\t' };

            using (var stream = formFile.OpenReadStream())
            using (var reader = new StreamReader(stream))
            {
                while ((line = reader.ReadLine()) != null)
                {
                    segments = line.Split(delimiters, StringSplitOptions.RemoveEmptyEntries);
                    var accountType = GetAccountTypeUtility.getAccountType(segments[0]);

                    if (accountType != AccountType.NoAccount)
                    {
                        accountBalances.Add(
                            new AccountBalance()
                            {
                                AccountTypeId = ((int)accountType),
                                Amount = Decimal.Parse(segments[1].Trim()),
                                Month = month,
                                Year = year,
                                CreatedDate = DateTime.Now,
                            });
                    }
                }

            }

            importResponse.Balances = accountBalances;
            importResponse.IsSuccess = true;
            importResponse.ErrorMessage = "";

            return importResponse;
        }
    }
}

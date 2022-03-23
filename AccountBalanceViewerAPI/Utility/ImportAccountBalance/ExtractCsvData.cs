using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared;
using CsvHelper;
using CsvHelper.Configuration;
using System.Data;
using System.Globalization;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public class ExtractCsvData: IExtractFileData
    {
        public ImportResponse getAccountBalances(IFormFile formFile, int month, int year)
        {
            var importResponse = new ImportResponse();
            var accountBalances = new List<AccountBalance>();

            var csvConfiguration = new CsvConfiguration(CultureInfo.InvariantCulture)
            {
                HasHeaderRecord = false
            };
            string value;

            using (var stream = formFile.OpenReadStream())
            using (var reader = new StreamReader(stream))
            using (var csvReader = new CsvReader(reader, csvConfiguration))
            {
                while (csvReader.Read())
                {
                    for (int i = 0; csvReader.TryGetField<string>(i, out value); i++)
                    {
                        var accountType = GetAccountTypeUtility.getAccountType(value.Trim());

                        if (accountType != AccountType.NoAccount)
                        {
                            csvReader.TryGetField<string>(++i, out value);
                            accountBalances.Add(
                                new AccountBalance()
                                {
                                    AccountTypeId = ((int)accountType),
                                    Amount = Decimal.Parse(value),
                                    Month = month,
                                    Year = year,
                                    CreatedDate = DateTime.Now,
                                });
                        }

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

using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared;
using AccountBalanceViewerAPI.Shared.Dto;

namespace AccountBalanceViewerAPI.Utility.GetChartDataset
{
    public class GetChartDatasetUtility: IChartDatasetUtility
    {
        public ChartAccountDatasetDto gerChartDataset(IList<AccountBalance> balances, int year)
        {
            var filteredBalances = balances.Where(x => x.Year == year);
            var chartDataset = new ChartAccountDatasetDto();

            for (int i = 1; i <= 12; i++)
            {
                chartDataset.RandDdata.Add(filteredBalances?.FirstOrDefault(x => x.Month == i && x.AccountTypeId == (int)AccountType.RandD)?.Amount ?? 0);
                chartDataset.CanteenData.Add(filteredBalances?.FirstOrDefault(x => x.Month == i && x.AccountTypeId == (int)AccountType.Canteen)?.Amount ?? 0);
                chartDataset.CeoCarExpenceData.Add(filteredBalances?.FirstOrDefault(x => x.Month == i && x.AccountTypeId == (int)AccountType.CeoCarExpence)?.Amount ?? 0);
                chartDataset.MarketingData.Add(filteredBalances?.FirstOrDefault(x => x.Month == i && x.AccountTypeId == (int)AccountType.Marketing)?.Amount ?? 0);
                chartDataset.ParkingFinesData.Add(filteredBalances?.FirstOrDefault(x => x.Month == i && x.AccountTypeId == (int)AccountType.ParkingFines)?.Amount ?? 0);
            }

            return chartDataset;
        }
    }
}

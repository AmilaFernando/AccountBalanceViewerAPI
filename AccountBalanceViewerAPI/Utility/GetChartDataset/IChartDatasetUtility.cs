using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared.Dto;

namespace AccountBalanceViewerAPI.Utility.GetChartDataset
{
    public interface IChartDatasetUtility
    {
        public ChartAccountDatasetDto gerChartDataset(IList<AccountBalance> balances, int year);

    }
}

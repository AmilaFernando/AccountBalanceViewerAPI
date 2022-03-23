using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared.Dto;

namespace AccountBalanceViewerAPI.Utility.CurrentAccountBalance
{
    public interface ICurrentBalanceUtility
    {
        public CurrentBalanceDto GetAccountSummary(IList<AccountBalance> balances);
    }
}

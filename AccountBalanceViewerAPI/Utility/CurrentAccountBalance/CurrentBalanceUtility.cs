using AccountBalanceViewerAPI.Models;
using AccountBalanceViewerAPI.Shared;
using AccountBalanceViewerAPI.Shared.Dto;
using System.Linq;

namespace AccountBalanceViewerAPI.Utility.CurrentAccountBalance
{
    public class CurrentBalanceUtility: ICurrentBalanceUtility
    {
        public CurrentBalanceDto GetAccountSummary(IList<AccountBalance> balances)
        {
            var AccountBalances = new CurrentBalanceDto()
            {
                RandDBalance = balances.Where(x => x.AccountTypeId == (int)AccountType.RandD)
                                .Select(x => x.Amount)
                                .Sum(),
                CanteenBalance = balances.Where(x => x.AccountTypeId == (int)AccountType.Canteen)
                                .Select(x => x.Amount)
                                .Sum(),
                CeoCarExpenceBalance = balances.Where(x => x.AccountTypeId == (int)AccountType.CeoCarExpence)
                                            .Select(x => x.Amount)
                                            .Sum(),
                MarketingBalance = balances.Where(x => x.AccountTypeId == (int)AccountType.Marketing)
                                            .Select(x => x.Amount)
                                            .Sum(),
                ParkingFinesBalance = balances.Where(x => x.AccountTypeId == (int)AccountType.ParkingFines)
                                            .Select(x => x.Amount)
                                            .Sum(),
            };

            return AccountBalances;
        }
    }
}

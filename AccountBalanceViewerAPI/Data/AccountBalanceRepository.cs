using AccountBalanceViewerAPI.Data;
using AccountBalanceViewerAPI.Models;

namespace AccountBalanceViewerAPI.Data
{
    public class AccountBalanceRepository : GenericRepository<AccountBalance, AccountBalanceDBContext>
    {
        public AccountBalanceRepository(AccountBalanceDBContext context) : base(context)
        {

        }

    }
}

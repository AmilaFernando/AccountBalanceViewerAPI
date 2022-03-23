using AccountBalanceViewerAPI.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AccountBalanceViewerAPI.Data
{
    public class AccountBalanceDBContext: IdentityDbContext<IdentityUser>
    {
        public AccountBalanceDBContext(DbContextOptions<AccountBalanceDBContext> options)
               : base(options)
        {
        }

        public DbSet<AccountBalance> AccountBalance { get; set; }


    }
}

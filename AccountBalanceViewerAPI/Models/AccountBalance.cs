global using System.ComponentModel.DataAnnotations;
global using System.ComponentModel.DataAnnotations.Schema;
using AccountBalanceViewerAPI.Data;

namespace AccountBalanceViewerAPI.Models
{
    public class AccountBalance : IEntity
    {
        public int Id { get; set; }

        [Required]
        public int Month { get; set; }

        [Required]
        public int Year { get; set; }

        [Required]
        [Column(TypeName = "Decimal(18,2)")]
        public decimal Amount { get; set; }

        [Required]
        public int AccountTypeId { get; set; }

        public DateTime CreatedDate { get; set; }
    }
}

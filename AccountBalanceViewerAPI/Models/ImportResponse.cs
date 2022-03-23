namespace AccountBalanceViewerAPI.Models
{
    public class ImportResponse
    {
        public IList<AccountBalance> Balances { get; set; }

        public bool IsSuccess { get;set; }

        public string ErrorMessage { get; set; }


    }
}

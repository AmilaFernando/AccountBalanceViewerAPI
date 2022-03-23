using AccountBalanceViewerAPI.Data;

namespace AccountBalanceViewerAPI.Models
{
    public class AuthResponse
    {
        public string? Status { get; set; }

        public string? Message { get; set; }

        public bool IsAuthenticationSuccessful { get; set; }
    }
}

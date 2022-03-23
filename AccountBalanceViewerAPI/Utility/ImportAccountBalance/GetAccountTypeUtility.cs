using AccountBalanceViewerAPI.Shared;

namespace AccountBalanceViewerAPI.Utility.ImportAccountBalance
{
    public static class GetAccountTypeUtility
    {
        public static AccountType getAccountType(string name)
        {
            switch (name)
            {
                case "R&D": return AccountType.RandD;
                case "Canteen": return AccountType.Canteen;
                case "CEO's car": return AccountType.CeoCarExpence;
                case "Marketing": return AccountType.Marketing;
                case "Parking fines": return AccountType.ParkingFines;
            }

            return AccountType.NoAccount;
        }
    }
}

namespace AccountBalanceViewerAPI.Shared.Dto
{
    public class ChartAccountDatasetDto
    {
        public ChartAccountDatasetDto()
        {
            RandDdata = new List<decimal>();
            CanteenData = new List<decimal>();
            CeoCarExpenceData = new List<decimal>();
            MarketingData = new List<decimal>();
            ParkingFinesData = new List<decimal>();
        }

        public IList<decimal> RandDdata {get; set; }
        public IList<decimal> CanteenData { get; set; }
        public IList<decimal> CeoCarExpenceData { get; set; }
        public IList<decimal> MarketingData { get; set; }
        public IList<decimal> ParkingFinesData { get; set; }
    }
}

namespace BankData
{
    public abstract class DBase
    {
        protected string ConnectionString { get; set; }
        public DBase(string connectionString)
        {
            ConnectionString = connectionString;
        }
    }
}

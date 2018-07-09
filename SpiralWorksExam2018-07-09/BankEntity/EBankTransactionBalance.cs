namespace BankEntity
{
    public class EBankAccountTransactionBalance
    {
        public double Balance => IncrementAmount - DecreaseAmount;
        public double DecreaseAmount { get; set; }
        public double IncrementAmount { get; set; }
    }
}

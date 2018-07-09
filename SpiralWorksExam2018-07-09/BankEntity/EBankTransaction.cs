using System;

namespace BankEntity
{
    public class EBankAccountTransaction
    {
        public DateTime CreatedDate { get; set; }

        public double Amount { get; set; }

        public int AccountNumber { get; set; }
        public int BankTransactionId { get; set; }
        public int BankTransactionTypeId { get; set; }
    }
}

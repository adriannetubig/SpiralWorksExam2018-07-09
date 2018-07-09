using System;

namespace BankEntity
{
    public class EAccount
    {
        public DateTime CreatedDate { get; set; }

        public double Balance { get; set; }

        public int AccountNumber { get; set; }
        public int ID { get; set; }

        public string LoginName { get; set; }
        public string Password { get; set; }
    }
}

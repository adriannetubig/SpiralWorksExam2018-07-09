using BankEntity;
using System.Data;
using System.Data.SqlClient;

namespace BankData
{
    public class DBankAccount: DBase
    {
        public DBankAccount(string connectionString) : base(connectionString)
        {
        }

        public int Create(EBankAccount bankAccount)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlParameter outputIdParam = new SqlParameter("@AccountNumber", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                SqlCommand cmd = new SqlCommand("BankAccountCreate", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(outputIdParam);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return int.Parse(outputIdParam.Value.ToString());
            }
        }
    }
}

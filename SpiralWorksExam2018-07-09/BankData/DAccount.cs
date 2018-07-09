using BankEntity;
using System.Data;
using System.Data.SqlClient;

namespace BankData
{
    public class DAccount: DBase
    {
        public DAccount(string connectionString) : base(connectionString)
        {
        }

        public int Create(EAccount account)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlParameter outputIdParam = new SqlParameter("@ID", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                SqlCommand cmd = new SqlCommand("AccountCreate", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(outputIdParam);
                cmd.Parameters.AddWithValue("@LoginName", account.LoginName);
                cmd.Parameters.AddWithValue("@AccountNumber", account.AccountNumber);
                cmd.Parameters.AddWithValue("@Password", account.Password);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                return int.Parse(outputIdParam.Value.ToString());
            }
        }
    }
}

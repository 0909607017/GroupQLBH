using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DATA
{
    public class ConnectDB
    {
        public SqlConnection con = new SqlConnection(@"Server = .\SQLEXPRESS; Database = qlbhat ;Integrated Security= true;");
        public ConnectDB() { }
        public DataSet getAllTable(string tableName)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from " + tableName, con);
            
            DataSet ds = new DataSet();
            
            da.Fill(ds, tableName);
            return ds;
        }

        public int executeNonQuery(string sql)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                return 0;
            }
            catch (Exception)
            {
                return 1;
            }
        }
    }

}

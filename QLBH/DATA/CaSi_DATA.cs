using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DATA
{
    public class CaSi_DATA
    {
        ConnectDB objCon = new ConnectDB();
        public DataTable getCasi()
        {
            return objCon.getAllTable("CASI").Tables["CASI"];
        }

        public DataTable getCaSi_by_macasi(string macasi)
        {

            SqlCommand cmd = new SqlCommand("select * from CASI where macasi = @macasi", objCon.con);
            cmd.Parameters.Add("@macasi", SqlDbType.NVarChar, 50).Value = macasi;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "casi");
            return ds.Tables["casi"];
        }

        public int themCaSi(string macasi, string tencasi, string thongtincasi)
        {
            return objCon.executeNonQuery("Insert into CASI values('" + macasi + "','" + tencasi + "','" + thongtincasi + "')");
        }
        public int xoaCaSi(string macasi)
        {
            objCon.executeNonQuery("DELETE FROM BAIHAT WHERE macasi ='" + macasi + "'");
            return objCon.executeNonQuery("DELETE FROM CASI WHERE macasi ='" + macasi + "'");
        }
    }
}

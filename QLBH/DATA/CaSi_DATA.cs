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

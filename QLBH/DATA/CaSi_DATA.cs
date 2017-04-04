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
    }
}

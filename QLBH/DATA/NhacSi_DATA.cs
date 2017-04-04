using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DATA
{
    public class NhacSi_DATA
    {
        ConnectDB objCon = new ConnectDB();
        public DataTable getNhacsi()
        {
            return objCon.getAllTable("TACGIA").Tables["TACGIA"];
        }
    }
}

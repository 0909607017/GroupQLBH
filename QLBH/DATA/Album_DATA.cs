using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DATA
{
    public class Album_DATA
    {
        ConnectDB cn = new ConnectDB();
        SqlCommand cmd = new SqlCommand();
        public DataTable getAlbum()
        {
            return cn.getAllTable("Album").Tables["Album"];
        }
    }

   

    


}

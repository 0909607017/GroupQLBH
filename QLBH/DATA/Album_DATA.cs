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
        public DataTable getAlbum()
        {
            return cn.getAllTable("Album").Tables["Album"];
        }

        public DataTable getAlbum_by_maalbum(string maalbum)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM ALBUM WHERE maalbum=@maalbum", cn.con);
            cmd.Parameters.Add("@maalbum", SqlDbType.NVarChar).Value = maalbum;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "album");

            return ds.Tables["album"];
        }
    }

    
}

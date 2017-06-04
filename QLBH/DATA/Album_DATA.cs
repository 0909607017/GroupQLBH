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

        public int themalbum(string maalbum, string tenalbum, string namphathanh)
        {
            return cn.executeNonQuery("INSERT INTO ALBUM VALUES ('" + maalbum + "','" + tenalbum + "','" + namphathanh + "')");
        }

        public int xoaalbum(string maalbum)
        {
            return cn.executeNonQuery("DELETE FROM ALBUM WHERE maalbum ='" + maalbum + "'");
        
        }
        public int capnhatAlbum(string maalbum, string tenalbum, string namphathanh)
        {
            return cn.executeNonQuery("UPDATE ALBUM SET tenalbum ='" + tenalbum + "', namphathanh = '" + namphathanh + "' WHERE maalbum ='" + maalbum + "'");
        }
    }

    
}

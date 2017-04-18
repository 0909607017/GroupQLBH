using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DATA
{
    public class BaiHat_DATA
    {
        ConnectDB objCon = new ConnectDB();
        public DataTable getBaiHat_by_mabaihat(string mabaihat)
        {
            SqlCommand cmd = new SqlCommand("select * from BAIHAT where mabaihat=@mabaihat", objCon.con);
            cmd.Parameters.Add("@mabaihat",SqlDbType.NVarChar).Value = mabaihat;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "baihat");

            return ds.Tables["baihat"];
        }

        public DataTable getBaiHat_by_album(string maalbum)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM BAIHAT WHERE maalbum=@maalbum", objCon.con);
            cmd.Parameters.Add("@maalbum", SqlDbType.NVarChar).Value = maalbum;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "ALBUM");

            return ds.Tables["ALBUM"];
        }
        public DataTable getBaiHat()
        {
            return objCon.getAllTable("BAIHAT").Tables["BAIHAT"];
        }
    }


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace DATA
{
    public class CasiBaiHat_DATA
    {
        ConnectDB objCon = new ConnectDB();
        public DataTable getCasi_BaiHat_by_macasi(string macasi)
        {

            SqlCommand cmd = new SqlCommand("select * from CASI_BAIHAT where macasi = @macasi", objCon.con);
            cmd.Parameters.Add("@macasi", SqlDbType.NVarChar).Value = macasi;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Casi_baihat");
            return ds.Tables["Casi_baihat"];

        }

        public DataTable getCasi_BatHat_by_mabaihat(string mabaihat)
        {
            SqlCommand cmd = new SqlCommand("select * from CASI_BAIHAT where mabaihat = @mabaihat", objCon.con);
            cmd.Parameters.Add("@mabaihat", SqlDbType.NVarChar).Value = mabaihat;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Casi_baihat");
            return ds.Tables["Casi_baihat"];
 
        }

       
    }
}

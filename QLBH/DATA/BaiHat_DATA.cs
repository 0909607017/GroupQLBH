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
        public DataTable getBaiHat()
        {
            return objCon.getAllTable("BAIHAT").Tables["BAIHAT"];
        }

        public DataTable getBaiHat_by_cbo(string matheloai, string maalbum, string macasi, string matacgia, string mahangsanxuat)
        {

            SqlCommand cmd = new SqlCommand("select * from BAIHAT where matheloai=@matheloai,maalbum=@maalbum,macasi=@macasi,matacgia=@matacgia,mahangsanxuat=@mahangsanxuat", objCon.con);
            cmd.Parameters.Add("@matheloai", SqlDbType.NVarChar,50).Value = matheloai;
            cmd.Parameters.Add("@maalbum", SqlDbType.NVarChar, 50).Value = maalbum;
            cmd.Parameters.Add("@macasi", SqlDbType.NVarChar, 50).Value = macasi;
            cmd.Parameters.Add("@matacgia", SqlDbType.NVarChar, 50).Value = matacgia;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "baihat_cbo");

            return ds.Tables["baihat_cbo"];
        }

        public DataTable getBaiHat_by_cbo(string matheloai, string maalbum)
        {

            SqlCommand cmd = new SqlCommand("select * from BAIHAT where matheloai=@matheloai,maalbum=@maalbum", objCon.con);
            cmd.Parameters.Add("@matheloai", SqlDbType.NVarChar,50).Value = matheloai;
            cmd.Parameters.Add("@maalbum", SqlDbType.NVarChar,50).Value = maalbum;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "baihat_cbo");

            return ds.Tables["baihat_cbo"];
        }

        public DataTable getBaiHat_by_TheLoai(string matheloai)
        {
            SqlCommand cmd = new SqlCommand("select * from BAIHAT where matheloai=@matheloai", objCon.con);
            cmd.Parameters.Add("@matheloai", SqlDbType.NVarChar,50).Value = matheloai;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "chitietbaihat");


            return ds.Tables["chitietbaihat"];
        }

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
        public DataTable getBaiHat_Home()
        {
            return objCon.getBaiHat_home().Tables["baihat_home"];
        }

        public int themBaiHat(string mabaihat, string tenbaihat, string matheloai, string maalbum, string macasi, string matacgia, string manhasanxuat, string loibaihat)
        {
            objCon.executeNonQuery("Insert into BAIHAT values('" + mabaihat + "','" + tenbaihat + "','" + matheloai + "','" + maalbum + "','" + macasi + "','" + matacgia + "','" + manhasanxuat + "','" + loibaihat + "')");
            return objCon.executeNonQuery("Insert into CASI_BAIHAT values('" + macasi + "','" + mabaihat + "')");

        }

        public int xoaBaiHat(string mabaihat)
        {
            return objCon.executeNonQuery("DELETE FROM BAIHAT WHERE mabaihat ='" + mabaihat + "'");
        }

        public int capnhatBaiHat(string mabaihat, string tenbaihat, string matheloai, string maalbum, string macasi, string matacgia, string mahangsanxuat, string loibaihat)
        {
            return objCon.executeNonQuery("UPDATE BAIHAT SET tenbaihat ='" + tenbaihat + "', matheloai = '" + matheloai + "',maalbum = '" + maalbum + "',macasi = '" + macasi + "',matacgia = '" + matacgia + "',mahangsanxuat = '" + mahangsanxuat + "',loibaihat = '" + loibaihat + "' WHERE mabaihat ='" + mabaihat + "'");
        }
    }


}

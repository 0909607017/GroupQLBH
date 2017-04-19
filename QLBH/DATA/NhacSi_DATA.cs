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
        public DataTable getNhacSi()
        {
            return objCon.getAllTable("TACGIA").Tables["TACGIA"];
        }
        public int themNhacSi(string matacgia, string tentacgia, string thongtintacgia)
        {
            return objCon.executeNonQuery("Insert into TACGIA values('" + matacgia + "','" + tentacgia + "','" + thongtintacgia + "')");
        }
        public int xoaNhacSi(string matacgia)
        {
            objCon.executeNonQuery("DELETE FROM BAIHAT WHERE matacgia ='" + matacgia + "'");
            return objCon.executeNonQuery("DELETE FROM TACGIA WHERE matacgia ='" + matacgia + "'");
        }
        public int capnhatNhacSi(string matacgia, string tentacgia, string thongtintacgia)
        {
            return objCon.executeNonQuery("UPDATE TACGIA SET tentacgia ='" + tentacgia + "', thongtintacgia = '" + thongtintacgia + "' WHERE matacgia ='" + matacgia + "'");
        }
    }
}

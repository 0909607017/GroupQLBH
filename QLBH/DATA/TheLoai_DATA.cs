using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DATA
{
   public class TheLoai_DATA
    {
        ConnectDB condb = new ConnectDB();
        public DataTable getTheLoai()
        {
            return condb.getAllTable("THELOAI").Tables["THELOAI"]; 
        }
        public DataTable PhuongThucCuaTao(string matheloai)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM BAIHAT WHERE matheloai = @matheloai", condb.con);
            cmd.Parameters.Add("@matheloai", SqlDbType.NVarChar).Value = matheloai;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int themTheLoai(string matheloai, string tentheloai)
        {
            return condb.executeNonQuery("Insert into THELOAI values('" + matheloai + "','" + tentheloai + "')");
        }
    }
}

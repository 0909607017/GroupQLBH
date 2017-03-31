using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DTO_curly;

namespace DAL_curly
{
    public class qlbhDAL_curly
    {
        private DataProvider_curly dp;

        public qlbhDAL_curly()
        {
            dp = new DataProvider_curly();
        }

        public List<QLBH_curly> GetTacGia(string sql)
        {
            List<QLBH_curly> list = new List<QLBH_curly>();
            try
            {
                SqlDataReader dr = dp.ExecuteReader(sql);
                string matacgia,tentacgia,thongtintacgia;
                while (dr.Read())
                {
                    matacgia = dr.GetString(0);
                    tentacgia = dr.GetString(1);
                    thongtintacgia = dr.GetString(2);

                    QLBH_curly ql = new QLBH_curly(matacgia,tentacgia,thongtintacgia);
                    list.Add(ql);
                }
                return list;
            }
            catch (SqlException ex)
            {

                throw ex;
            }
        }
    }
}

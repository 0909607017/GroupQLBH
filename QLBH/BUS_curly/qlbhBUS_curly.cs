using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

using DAL_curly;
using DTO_curly;

namespace BUS_curly
{
    public class qlbhBUS_curly
    {
        public List<QLBH_curly> GetTacGia(string sql)
        {
            try
            {
                return new qlbhDAL_curly().GetTacGia(sql);
            }
            catch (SqlException ex)
            {

                throw ex;
            }

        }
    }
}
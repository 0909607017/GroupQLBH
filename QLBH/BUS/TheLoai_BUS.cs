    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DATA;
using System.Data;
namespace BUS
{
    public class TheLoai_BUS
    {
        TheLoai_DATA theloai = new TheLoai_DATA();
        public DataTable GetTL()
        {
            return theloai.getTheLoai();
        }
        public DataTable GetBaiHat(string matheloai)
        {
            
            return theloai.PhuongThucCuaTao(matheloai);
        }
    }
}

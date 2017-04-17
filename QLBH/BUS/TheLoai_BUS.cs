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
        private string matheloaiđangcchon;

        private string matheloai { get; set; }
        private string tentheloai { get; set; }

        public TheLoai_BUS(string ma, string ten)
        {
            this.matheloai = ma;
            this.tentheloai = ten;
        }

        public TheLoai_BUS()
        {
        }

        public TheLoai_BUS(string matheloaiđangcchon)
        {
            this.matheloaiđangcchon = matheloaiđangcchon;
        }

        public DataTable GetTL()
        {
            return theloai.getTheLoai();
        }

        public DataTable GetBaiHat(string matheloai)
        {

            return theloai.PhuongThucCuaPhuc(matheloai);
        }


        public int themTheLoai()
        {
            return theloai.themTheLoai(matheloai, tentheloai);
        }
        public int xoaTheLoai()
        {
            return theloai.xoaTheLoai(matheloai, tentheloai);
        }
    }
}

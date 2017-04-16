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
        private string matheloai;
        private string tentheloai;
        private string matheloaiđangcchon;

        public TheLoai_BUS(string ma, string ten)
        {
            this.MATHELOAI = ma;
            this.TENTHELOAI = ten;
        }

        public TheLoai_BUS(string matheloaiđangcchon)
        {
            this.matheloaiđangcchon = matheloaiđangcchon;
        }

        public TheLoai_BUS()
        {
        }

        public string MATHELOAI
        {
            get { return matheloai; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập mã thể loại !");
                else
                    matheloai = value;
            }
        }

        public string TENTHELOAI
        {
            get { return tentheloai; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Nhập tên thể loại !");
                else
                    tentheloai = value;
            }
        }

        public DataTable GetTL()
        {
            return theloai.getTheLoai();
        }

        public DataTable GetBaiHat(string matheloai)
        {
            
            return theloai.PhuongThucCuaTao(matheloai);
        }


        public int themTheLoai()
        {
            return theloai.themTheLoai(matheloai, tentheloai);
        }
    }
}

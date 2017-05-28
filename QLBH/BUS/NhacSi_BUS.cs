using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DATA;
namespace BUS
{
    public class NhacSi_BUS
    {
        NhacSi_DATA objNhacSi = new NhacSi_DATA();
        private string matacgia;
        private string tentacgia;
        private string thongtintacgia;
        public NhacSi_BUS() { }
        public NhacSi_BUS(string ma)
        {
            this.matacgia = ma;
        }
        public NhacSi_BUS(string ma, string ten, string thongtin)
        {
            this.MATACGIA = ma;
            this.TENTACGIA = ten;
            this.THONGTINTACGIA = thongtin;
        }
        public string MATACGIA
        {
            get { return matacgia; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Vui lòng nhập mã tác giả");
                else
                    matacgia = value;
            }
        }
        public string TENTACGIA
        {
            get { return tentacgia; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Vui lòng nhập tên tác giả");
                else
                    tentacgia = value;
            }
        }
        public string THONGTINTACGIA
        {
            get { return thongtintacgia; }

            set
            {
                if (value.Trim().Equals(""))
                    throw new Exception("Chưa nhập thông tin tác giả !");
                else
                {
                    if (value == "Chưa có thông tin cho tác giả !! == > bấm [Đồng ý] lần nữa để lưu tác giả này !")
                        thongtintacgia = "";
                    else
                        thongtintacgia = value;
                }
            }
        }
        public DataTable GetNhacSi()
        {
            return objNhacSi.getNhacSi();
        }
        public int themTacGia()
        {
            return objNhacSi.themNhacSi(matacgia, tentacgia, thongtintacgia);
        }
        public int xoaTacGia()
        {
            return objNhacSi.xoaNhacSi(matacgia);
        }
        public int capnhatNhacSi()
        {
            return objNhacSi.capnhatNhacSi(matacgia, tentacgia, thongtintacgia);
        }
    }
}

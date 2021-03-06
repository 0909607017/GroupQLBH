﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DATA;

namespace BUS
{
   public class BaiHat_BUS
    {
       BaiHat_DATA objBaiHat = new BaiHat_DATA();

       public string mabaihat { get; set; }
       private string tenbaihat { get; set; }
       private string matheloai { get; set; }
       private string maalbum { get; set; }
       private string macasi { get; set; }
       private string matacgia { get; set; }
       private string loibaihatt { get; set; }

       public BaiHat_BUS() { }

       public BaiHat_BUS(string ma, string ten, string matheloai, string maalbum, string macasi, string matacgia, string loibaihat)
       {
           this.mabaihat = ma;
           this.tenbaihat = ten;
           this.matheloai = matheloai;
           this.maalbum = maalbum;
           this.macasi = macasi;
           this.matacgia = matacgia;
           this.loibaihatt = loibaihat;
       }

       public BaiHat_BUS(string ma)
       {
           this.mabaihat = ma;
       }

       public DataTable getBaiHat_home()
       {
           return objBaiHat.getBaiHat_Home();
       }

       public DataTable getBaiHat()
       {
           return objBaiHat.getBaiHat();
       }
       public DataTable getBaiHat_by_mabaihat(string mabaihat)
       {
           return objBaiHat.getBaiHat_by_mabaihat(mabaihat);
       }

       public DataTable getBaiHat_by_maalbum(string maalbum)
       {
           return objBaiHat.getBaiHat_by_album(maalbum);
       }

       public int themBaiHat()
       {
           return objBaiHat.themBaiHat(mabaihat, tenbaihat, matheloai, maalbum, macasi, matacgia, loibaihatt);
       }

       public int xoaBaiHat()
       {
           return objBaiHat.xoaBaiHat(mabaihat);
       }

       public int capnhatBaiHat()
       {
           return objBaiHat.capnhatBaiHat(mabaihat, tenbaihat, matheloai, maalbum, macasi, matacgia,loibaihatt);
       }

       public DataTable getBaiHat_cbo(string matheloai, string maalbum, string macasi, string matacgia)
       {
           return objBaiHat.getBaiHat_by_cbo(matheloai, maalbum, macasi, matacgia);
       }

       public DataTable getBaiHat_cbo(string matheloai, string maalbum)
       {
           return objBaiHat.getBaiHat_by_cbo(matheloai, maalbum);
       }
    }


}

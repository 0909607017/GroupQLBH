using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DATA;

namespace BUS
{
    public class Album_BUS
    {
        Album_DATA objAlbum = new Album_DATA();

        public string maalbum { get; set; }
        public string tenalbum { get; set; }
        public string namphathanh { get; set; }

        public Album_BUS(string ma, string ten, string nam)
        {
            this.maalbum = ma;
            this.tenalbum = ten;
            this.namphathanh = nam;
        }
        public Album_BUS(string ma)
        {
            this.maalbum = ma;
        }

        public Album_BUS() { }
        

        public DataTable getAlbum()
        {
            return objAlbum.getAlbum();
        }

        public DataTable getAlbum_by_maalbum(string maalbum)
        {
            return objAlbum.getAlbum_by_maalbum(maalbum);
        }

        public int themAlbum()
        {
            return objAlbum.themalbum(maalbum, tenalbum, namphathanh);
        }
        public int xoaAlbum()
        {
            return objAlbum.xoaalbum(maalbum);
        }
        public int capnhatalbum()
        {
            return objAlbum.capnhatAlbum(maalbum, tenalbum, namphathanh);
        }
       
    }
}

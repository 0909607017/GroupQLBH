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
        public DataTable getAlbum()
        {
            return objAlbum.getAlbum();
        }

        public DataTable getAlbum_by_maalbum(string maalbum)
        {
            return objAlbum.getAlbum_by_maalbum(maalbum);
        }
    }
}

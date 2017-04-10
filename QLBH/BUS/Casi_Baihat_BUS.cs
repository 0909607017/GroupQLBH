using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DATA;

namespace BUS
{
    public class Casi_Baihat_BUS
    {
        CasiBaiHat_DATA objCasi_baihat = new CasiBaiHat_DATA();

        public DataTable getCasi_BaiHat_by_macasi(string macasi)
        {
            return objCasi_baihat.getCasi_BaiHat_by_macasi(macasi);
        }

        public DataTable getCasi_BaiHat_by_mabaihat(string mabaihat)
        {
            return objCasi_baihat.getCasi_BatHat_by_mabaihat(mabaihat);
        }
    
        
    }
}

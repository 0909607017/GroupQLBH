using System;
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
       public DataTable getBaiHat_by_mabaihat(string mabaihat)
       {
           return objBaiHat.getBaiHat_by_mabaihat(mabaihat);
       }
    }
}

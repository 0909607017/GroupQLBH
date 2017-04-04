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
        public DataTable getNhacSi()
        {
            return objNhacSi.getNhacsi();
        }
    }
}

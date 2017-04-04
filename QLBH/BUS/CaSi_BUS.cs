using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DATA;
namespace BUS
{
    public class CaSi_BUS
    {
        CaSi_DATA objCaSi = new CaSi_DATA();
        public DataTable getCaSi()
        {
            return objCaSi.getCasi();
        }
    }
}

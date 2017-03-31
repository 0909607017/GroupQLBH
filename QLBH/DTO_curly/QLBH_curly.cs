using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_curly
{
    public class QLBH_curly
    {
        public string MaTacGia { get; set; }
        public string TenTacGia { get; set; }
        public string ThongTinTacGia { get; set; }
        public QLBH_curly(string matacgia,string tentacgia,string thongtintacgia)
        {
            MaTacGia = matacgia;
            TenTacGia = tentacgia;
            ThongTinTacGia = thongtintacgia;
        }

    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS;  

namespace QLBH
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }
        private DataTable dtCasi;
        private DataTable dtAlbum;
        private void thôngTinSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Các sinh viên thực hiện:\nPhạm Nguyễn Xuân Phúc - 1451010135\nTrần Dũng Danh - 1451010025\nLê Thanh Phước - 1451010143\nTrương Quang Tân - 1451010172");
        }
        private void load_Casi()
        {
            dtCasi = new CaSi_BUS().getCaSi();
            lstDanhSachCaSi.DataSource = dtCasi;
            lstDanhSachCaSi.DisplayMember = "tencasi";
            lstDanhSachCaSi.ValueMember = "macasi";

        }

        private void load_Album()
        {
            dtAlbum = new Album_BUS().getAlbum();
            lisAlbum.DataSource = dtAlbum;
            lisAlbum.DisplayMember = "tenalbum";
            lisAlbum.ValueMember = "maalbum";
            

        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            load_Casi();
            load_Album();
      
        }
       

       
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using DTO_curly;
using BUS_curly;

namespace QLBH
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void thôngTinSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Các sinh viên thực hiện:\nPhạm Nguyễn Xuân Phúc - 1451010135\nTrần Dũng Danh - 1451010025\nLê Thanh Phước - 1451010143\nTrương Quang Tân - 1451010172");
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }

        private void dtgNhacsi_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            dtgNhacsi.DataSource = GetNhacSi();
        }
        private List<QLBH_curly> GetNhacSi()
        {
            try
            {
                string sql = "SELECT * FROM   FROM [QLBH].[dbo].[TACGIA]";
                return new qlbhBUS_curly().GetTacGia(sql);
            }
            catch (SqlException ex)
            {

                throw ex;
            }
        }
    }
}

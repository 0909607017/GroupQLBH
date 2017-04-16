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
    public partial class ThemTL : Form
    {
        public ThemTL()
        {
            InitializeComponent();
        }

        private void btok_Click(object sender, EventArgs e)
        {
            TheLoai_BUS theloai;
            try
            {
                theloai = new TheLoai_BUS(txtmatl.Text, txttentl.Text);
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                    txtmatl.Focus();
                else if (loi.Contains("tên"))
                    txttentl.Focus();

                return;
            }
            TheLoai_BUS tl = new TheLoai_BUS(txtmatl.Text, txttentl.Text);
            int resutl = tl.themTheLoai();
            if (resutl == 0)
                MessageBox.Show("Thêm thành công thể loại [" + txttentl.Text + "] với mã thể loại là [" + txtmatl.Text + "]");
            else
                MessageBox.Show("That bai");
            this.DialogResult = DialogResult.OK;
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            txtmatl.Text = txttentl.Text = "";
            txtmatl.Focus();
        }
    }
}

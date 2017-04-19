using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QLBH
{
    public partial class ThemTheLoai : Form
    {
        public ThemTheLoai()
        {
            InitializeComponent();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
        }

        private void BtnNhapLai_Click(object sender, EventArgs e)
        {
            txtMaTL.Text = txtTenTL.Text = "";
            txtMaTL.Focus();
        }

        private void btnDongY_Click(object sender, EventArgs e)
        {
            TheLoai_BUS theloai;
            try
            {
                theloai = new TheLoai_BUS(txtMaTL.Text, txtTenTL.Text);
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                    txtMaTL.Focus();
                else if (loi.Contains("tên"))
                    txtTenTL.Focus();

                return;
            }
            TheLoai_BUS tl = new TheLoai_BUS(txtMaTL.Text, txtTenTL.Text);
            int resutl = tl.themTheLoai();
            if (resutl == 0)
                MessageBox.Show("Thêm thành công thể loại [" + txtTenTL.Text + "] với mã thể loại là [" + txtMaTL.Text + "]");
            else
                MessageBox.Show("That bai");
            this.DialogResult = DialogResult.OK;
        }

        private void txtTenTL_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

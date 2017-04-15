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
    public partial class frmThemAlbum : Form
    {
        public frmThemAlbum()
        {
            InitializeComponent();
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            Album_BUS objAbum;
            try
            {
                objAbum = new Album_BUS(tbmaalbum.Text,tbtenalbum.Text,tbnam.Text);
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                    tbmaalbum.Focus();
                else if (loi.Contains("tên"))
                    tbtenalbum.Focus();
                else tbnam.Focus();
                return;
            }
            Album_BUS a = new Album_BUS(tbmaalbum.Text, tbtenalbum.Text, tbnam.Text);
            int resutl = a.themAlbum();
            if (resutl == 0)
                MessageBox.Show("Thêm thành công album [" + tbtenalbum.Text + "] với mã album là [" + tbmaalbum.Text + "]");
            else
                MessageBox.Show("Thất bại");
            this.DialogResult = DialogResult.OK;
        }

        private void btNhaplai_Click(object sender, EventArgs e)
        {
            tbmaalbum.Text = tbtenalbum.Text = tbnam.Text = "";
            tbmaalbum.Focus();
        }

        private void btHuy_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void frmThemAlbum_Load(object sender, EventArgs e)
        {

        }
    }
}

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
    public partial class frm_ThemNhacSi : Form
    {
        public frm_ThemNhacSi()
        {
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            NhacSi_BUS objTacGia;
            try
            {
                objTacGia = new NhacSi_BUS(txtmanhacsi.Text, txttennhacsi.Text, txtThongTin.Text);
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                {
                    txtmanhacsi.Focus();
                    return;
                }
                else if (loi.Contains("tên"))
                {
                    txttennhacsi.Focus();
                    return;
                }
                else
                    txtThongTin.Text = "Chưa có thông tin cho tác giả !! == > bấm [Đồng ý] lần nữa để lưu tác giả này !";
                return;
            }
            NhacSi_BUS a = new NhacSi_BUS(txtmanhacsi.Text, txttennhacsi.Text, txtThongTin.Text);
            int resutl = a.themTacGia();
            if (resutl == 0)
                MessageBox.Show("Thêm thành công ca sĩ [" + txttennhacsi.Text + "] với mã ca sĩ là [" + txtmanhacsi.Text + "]");
            else
                MessageBox.Show("Thất bại rồi ! mã [" + txtmanhacsi.Text + "] đã tồn tại");
            this.DialogResult = DialogResult.OK;
        }

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtmanhacsi.Text = txttennhacsi.Text = txtThongTin.Text = "";
            txtmanhacsi.Focus();
        }

        private void btnTrove_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}

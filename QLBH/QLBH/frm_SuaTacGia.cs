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
    public partial class frm_SuaTacGia : Form
    {
        public string ma, ten, thongtin;
        public frm_SuaTacGia()
        {
            InitializeComponent();
        }

        private void frm_SuaTacGia_Load(object sender, EventArgs e)
        {
            txtMaTacGia.Text = ma;
            txtTenTacGia.Text = ten;
            txtThongTin.Text = thongtin;
            this.Text = "Cập nhập Tác Giả [" + ten + "]";
            txtTenTacGia.SelectAll(); txtTenTacGia.Focus();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            NhacSi_BUS objTacGia;
            try
            {
                objTacGia = new NhacSi_BUS(txtMaTacGia.Text, txtTenTacGia.Text, txtThongTin.Text);
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                {
                    txtMaTacGia.Focus();
                    return;
                }
                else if (loi.Contains("tên"))
                {
                    txtTenTacGia.Focus();
                    return;
                }
                else
                    txtThongTin.Text = "Chưa có thông tin cho tác giả !! == > bấm [Đồng ý] lần nữa để lưu tác giả này !";
                return;
            }
            NhacSi_BUS a = new NhacSi_BUS(txtMaTacGia.Text, txtTenTacGia.Text, txtThongTin.Text);
            int resutl = a.capnhatNhacSi();
            if (resutl == 0)
                MessageBox.Show("Cập nhật thành công tác giả [" + txtTenTacGia.Text + "] với mã tác giả là [" + txtMaTacGia.Text + "]");
            else
                MessageBox.Show("Thất bại");

            this.DialogResult = DialogResult.OK;
        }

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtThongTin.Text = "";
            txtTenTacGia.Clear();
            txtTenTacGia.Focus();
        }

        private void btnTrove_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}

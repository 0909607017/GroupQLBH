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
    public partial class frm_SuaBaiHat : Form
    {
        public frm_SuaBaiHat()
        {
            InitializeComponent();
        }

        private DataTable dtTheLoai;
        private DataTable dtAlbum;
        private DataTable dtCasi;
        private DataTable dtTacGia;

        public string ma, ten, loibaihat;
        public string matheloai, maalbum, macasi, matacgia;

        private void frm_SuaBaiHat_Load(object sender, EventArgs e)
        {

        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            BaiHat_BUS objBaiHat;
            try
            {
                objBaiHat = new BaiHat_BUS(txtMaBaiHat.Text, txtTenBaiHat.Text, cboTheLoai.SelectedValue.ToString(), cboAlbum.SelectedValue.ToString(), cboCasi.SelectedValue.ToString(), cbotacGia.SelectedValue.ToString(), txtLoiBaiHat.Text);

            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                {
                    txtMaBaiHat.Focus();
                    return;
                }
                else if (loi.Contains("tên"))
                {
                    txtTenBaiHat.Focus();
                    return;
                }
                else
                    txtLoiBaiHat.Text = "Chưa có lời cho bài hát !! == > bấm [Đồng ý] lần nữa để lưu bài hát này !";
                return;
            }
            BaiHat_BUS a = new BaiHat_BUS(txtMaBaiHat.Text, txtTenBaiHat.Text, cboTheLoai.SelectedValue.ToString(), cboAlbum.SelectedValue.ToString(), cboCasi.SelectedValue.ToString(), cbotacGia.SelectedValue.ToString(), txtLoiBaiHat.Text);
            int resutl = a.capnhatBaiHat();
            if (resutl == 0)
                MessageBox.Show("Cập nhật thành công tác giả [" + txtTenBaiHat.Text + "] với mã tác giả là [" + txtMaBaiHat.Text + "]");
            else
                MessageBox.Show("That bai");

            this.DialogResult = DialogResult.OK;
        }

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtTenBaiHat.Text = txtLoiBaiHat.Text = "";
            txtTenBaiHat.Focus();

            cboTheLoai.Text = "";
            cboAlbum.Text = "";
            cboCasi.Text = "";
            cbotacGia.Text = "";
        }

        private void btnTrove_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}

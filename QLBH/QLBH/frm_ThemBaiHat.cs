﻿using System;
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
    public partial class frm_ThemBaiHat : Form
    {
        public frm_ThemBaiHat()
        {
            InitializeComponent();
        }

        private DataTable dtTheLoai;
        private DataTable dtAlbum;
        private DataTable dtCasi;
        private DataTable dtTacGia;

        private void frm_ThemBaiHat_Load(object sender, EventArgs e)
        {
            dtTheLoai = new TheLoai_BUS().GetTL();
            cboTheLoai.DataSource = dtTheLoai;
            cboTheLoai.DisplayMember = "tentheloai";
            cboTheLoai.ValueMember = "matheloai";

            dtAlbum = new Album_BUS().getAlbum();
            cboAlbum.DataSource = dtAlbum;
            cboAlbum.DisplayMember = "tenalbum";
            cboAlbum.ValueMember = "maalbum";

            dtCasi = new CaSi_BUS().getCaSi();
            cboCasi.DataSource = dtCasi;
            cboCasi.DisplayMember = "tencasi";
            cboCasi.ValueMember = "macasi";

            dtTacGia = new NhacSi_BUS().GetNhacSi();
            cbotacGia.DataSource = dtTacGia;
            cbotacGia.DisplayMember = "tentacgia";
            cbotacGia.ValueMember = "matacgia";
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
                int resutl = a.themBaiHat();
                if (resutl == 0)
                    MessageBox.Show("Thêm thành công bài hát [" + txtTenBaiHat.Text + "] với mã bài hát là [" + txtMaBaiHat.Text + "]","Success!",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
                else
                    MessageBox.Show("Thêm bài hát thất bại !","Failed!",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);

                this.DialogResult = DialogResult.OK;
            
        }

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtMaBaiHat.Text = txtTenBaiHat.Text = txtLoiBaiHat.Text = "";
            txtMaBaiHat.Focus();

            cboTheLoai.Text = " ";
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

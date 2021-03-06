﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using BUS;
using System.Windows.Forms;

namespace QLBH
{
    public partial class SuaBaiHat : Form
    {
        public SuaBaiHat()
        {
            InitializeComponent();
        }

        private DataTable dtTheLoai;
        private DataTable dtAlbum;
        private DataTable dtCasi;
        private DataTable dtTacGia;

        public string ma, ten, loibaihat;
        public string matheloai, maalbum, macasi, matacgia;

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtTenBaiHat.Text = txtLoiBaiHat.Text = "";
            txtTenBaiHat.Focus();

            cboTheLoai.Text ="";
            cboAlbum.Text="";
            cboCasi.Text = "";
            cbotacGia.Text = "";
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
            BaiHat_BUS a = new BaiHat_BUS(txtMaBaiHat.Text, txtTenBaiHat.Text, cboTheLoai.SelectedValue.ToString(), cboAlbum.SelectedValue.ToString(), cboCasi.SelectedValue.ToString(), cbotacGia.SelectedValue.ToString(),  txtLoiBaiHat.Text);
            int resutl = a.capnhatBaiHat();
            if (resutl == 0)
                MessageBox.Show("Cập nhật thành công tác giả [" + txtTenBaiHat.Text + "] với mã tác giả là [" + txtMaBaiHat.Text + "]");
            else
                MessageBox.Show("That bai");

            this.DialogResult = DialogResult.OK;
        }

        private void SuaBaiHat_Load(object sender, EventArgs e)
        {
            txtMaBaiHat.Text = ma; txtTenBaiHat.Text = ten; txtLoiBaiHat.Text = loibaihat;
            txtTenBaiHat.SelectAll(); txtTenBaiHat.Focus();
            this.Text = "Cập nhật bài hát [" + ten + "]";

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

            //dtTacGia = new TacGia_BUS().getTacGia();
            //cbotacGia.DataSource = dtTacGia;
            //cbotacGia.DisplayMember = "tentacgia";
            //cbotacGia.ValueMember = "matacgia";

           

            cboTheLoai.SelectedValue = matheloai;
            cboAlbum.SelectedValue = maalbum;
            cboCasi.SelectedValue = macasi;
            //cbotacGia.SelectedValue = matacgia;
            
        }
    }
}

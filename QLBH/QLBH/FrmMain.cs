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
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }
        private DataTable dtCasi;
        private DataTable dtCasi_Baihat;
        private DataTable dtAlbum;
        private DataTable dtTheLoai;
        bool danapxong_lstBox = false;



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
            Load_TheLoai();
            load_Casi();
            load_Album();
            danapxong_lstBox = true;

        }
        private void Load_TheLoai()
        {
            dtTheLoai = new TheLoai_BUS().GetTL();
            dataGridView2.DataSource = dtTheLoai;
        }



        //xu li Click button listview listbox

        private void lstDanhSachCaSi_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (danapxong_lstBox)
            {
                if (lstDanhSachCaSi.SelectedItems.Count == 0)
                    return;
                //lvwBaiHat_CaSi.Items.Clear();
                DataView dv = new DataView(dtCasi);
                dv.RowFilter = "macasi = '" + lstDanhSachCaSi.SelectedValue + "'";
                string tencasi = "";
                foreach (DataRowView dr in dv)
                {
                    tencasi = lblTenCaSi.Text = dr["tencasi"].ToString();
                    txtThongTinCaSi.Text = dr["thongtincasi"].ToString();
                }
                if (txtThongTinCaSi.Text.Trim().Equals(""))
                    txtThongTinCaSi.Text = "Chưa có thông tin cho ca sĩ: [" + tencasi + "]";

                dtCasi_Baihat = new Casi_Baihat_BUS().getCasi_BaiHat_by_macasi(lstDanhSachCaSi.SelectedValue.ToString());
                lvwBaiHat_CaSi.Items.Clear();
                foreach (DataRow dr in dtCasi_Baihat.Rows)
                {
                    DataTable dt = new BaiHat_BUS().getBaiHat_by_mabaihat(dr["mabaihat"].ToString());

                    ListViewItem li = lvwBaiHat_CaSi.Items.Add("");
                    li.SubItems.Add(dt.Rows[0]["tenbaihat"].ToString());
                }
                stt(lvwBaiHat_CaSi);

            }
        }





        //Ham` load so thu tu
        private void stt(ListView lvw)
        {
            for (int i = 1; i <= lvw.Items.Count; i++)
            {
                lvw.Items[i - 1].Text = i.ToString();
                lvw.Items[i - 1].ImageIndex = 0;
                if (i % 2 != 0)
                    lvw.Items[i - 1].BackColor = Color.LightBlue;
            }
        }

        private void loadlai_listview()
        {

            lvwBaiHat_CaSi.Items.Clear();


        }

        private void label4_Click(object sender, EventArgs e)
        {

        }



        private void lisAlbum_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (lisAlbum.SelectedItems.Count == 0)
                return;
            DataTable dt = null;
            try
            {
                dt = new BaiHat_BUS().getBaiHat_by_maalbum(lisAlbum.SelectedValue.ToString());
                DataView dv = new DataView(dt);
                dv.RowFilter = "maalbum = '" + lisAlbum.SelectedItem + "'";
                ListViewItem li = new ListViewItem();
                lisAlbum_Baihat.DataSource = dt;
                lisAlbum_Baihat.DisplayMember = "tenbaihat";
                lisAlbum_Baihat.ValueMember = "mabaihat";
           }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btAddAlbum_Click(object sender, EventArgs e)
        {
            //lisAlbum.Items.Clear();
            this.Visible = false;
            frmThemAlbum f = new frmThemAlbum();
            f.ShowDialog();
            this.Visible = true;
            load_Album();
        }

        private void btXoaAlbum_Click(object sender, EventArgs e)
        {
            if (lisAlbum.SelectedItems.Count == 0)
                return;
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Album [" + lisAlbum.SelectedItem.ToString() + "] và tất cả bài hát trong album này không ?", "Waring", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string maalbumđangcchon = lisAlbum.SelectedValue.ToString();
            Album_BUS a = new Album_BUS(maalbumđangcchon);
            int loi = a.xoaAlbum();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công album [" + maalbumđangcchon + "] ", "Thành Công", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("Xóa thất bại album [" + maalbumđangcchon + "] ", "Thất Bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            load_Album();
        }


        private void btnXoa_Click(object sender, EventArgs e)
        {
            int index = dataGridView2.CurrentCell.RowIndex;
            matheloaidangchon = dataGridView2.Rows[index].Cells[0].Value.ToString().Trim();
            TheLoai_BUS a = new TheLoai_BUS(matheloaiđangcchon);
            int loi = a.xoaTheLoai();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công");
            else
                MessageBox.Show("xóa thất bại");
            Load_TheLoai();
        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView3_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private string matheloaidangchon;
        private string matheloaiđangcchon;

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dataGridView2.CurrentCell.RowIndex;
            matheloaidangchon = dataGridView2.Rows[index].Cells[0].Value.ToString().Trim();
            DataTable dt = new DataTable();
            dt = new TheLoai_BUS().GetBaiHat(matheloaidangchon);
            dataGridView3.DataSource = dt;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            ThemTheLoai frm = new ThemTheLoai();
            frm.ShowDialog();
            this.Visible = true;
            Load_TheLoai();
        }

        private void btnThemCaSi_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            frmThem_Casi f = new frmThem_Casi();
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
                load_Casi();
            this.Visible = true;
        }

        private void btnXoaCaSi_Click(object sender, EventArgs e)
        {
            if (lstDanhSachCaSi.SelectedItems.Count == 0)
                return;
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Ca sĩ [" + lblTenCaSi.Text + "] và tất cả bài hát do ca sĩ này trình bày không ?", "xóa ca sĩ", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string macasidangchon = lstDanhSachCaSi.SelectedValue.ToString();
            CaSi_BUS a = new CaSi_BUS(macasidangchon);
            int loi = a.xoaCasi();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã ca sĩ [" + macasidangchon + "] ", "thành công hehe", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("xóa thất bại mã ca sĩ [" + macasidangchon + "] ", "thất bại huhu", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            load_Casi();
            loadlai_listview();
        }
    }
    
}

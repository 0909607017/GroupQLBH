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
        private DataTable dtBaihat_Home;
        private DataTable dtTacGia;
        private DataTable dtBaiHat_BaiHat;
        bool danapxong_lstBox = false;


        private void load_combobox_baihat()
        {

            cboTL.DataSource = dtTheLoai;
            cboTL.DisplayMember = "tentheloai";
            cboTL.ValueMember = "matheloai";

            cboAlbum.DataSource = dtAlbum;
            cboAlbum.DisplayMember = "tenalbum";
            cboAlbum.ValueMember = "maalbum";

            cboCasi.DataSource = dtCasi;
            cboCasi.DisplayMember = "tencasi";
            cboCasi.ValueMember = "macasi";

            cboTacgia.DataSource = dtTacGia;
            cboTacgia.DisplayMember = "tentacgia";
            cboTacgia.ValueMember = "matacgia";

        }

        private void load_Baihat()
        {
            dtBaiHat_BaiHat = new BaiHat_BUS().getBaiHat();
            foreach (DataRow dr in dtBaiHat_BaiHat.Rows)
            {
                ListViewItem li = listView2.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
                li.SubItems.Add(dr["loibaihat"].ToString());
                li.Tag = dr["mabaihat"];
            }
            stt(listView2);
        }

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
            load_BaiHat_home();
            load_Baihat();
            load_combobox_baihat();
            danapxong_lstBox = true;

        }
        private void Load_TheLoai()
        {
            dtTheLoai = new TheLoai_BUS().GetTL();
            dataGridView2.DataSource = dtTheLoai;
        }



      
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
            DataRowView dv = (DataRowView)lisAlbum.SelectedItem;
            string tenalbum = dv["tenalbum"].ToString();
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Album " + tenalbum + " và tất cả bài hát trong album này không ?", "Waring", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string maalbumđangcchon = lisAlbum.SelectedValue.ToString();
            Album_BUS a = new Album_BUS(maalbumđangcchon);
            int loi = a.xoaAlbum();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công album " + tenalbum + " ", "Thành Công", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("Xóa thất bại album " + tenalbum + " ", "Thất Bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            load_Album();
        }


        private void btnXoa_Click(object sender, EventArgs e)
        {
            int index = dataGridView2.CurrentCell.RowIndex;
            String matheloaidangchon = dataGridView2.Rows[index].Cells[0].Value.ToString().Trim();
            TheLoai_BUS a = new TheLoai_BUS(matheloaidangchon);
            int loi = a.xoaTheLoai();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công");
            else
                MessageBox.Show("xóa thất bại");
            Load_TheLoai();
        }

        private void load_BaiHat_home()
        {
            dtBaihat_Home = new BaiHat_BUS().getBaiHat_home();
            foreach (DataRow dr in dtBaihat_Home.Rows)
            {
                ListViewItem li = listView1.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
                li.SubItems.Add(dr["tenalbum"].ToString());
                DataTable dt = new Casi_Baihat_BUS().getCasi_BaiHat_by_mabaihat(dr["mabaihat"].ToString());
                string cac_casi = "";
                foreach (DataRow r in dt.Rows)
                {
                    DataTable dtcasi = new CaSi_BUS().getCasi_by_macasi(r["macasi"].ToString());
                    foreach (DataRow r1 in dtcasi.Rows)
                    {
                        cac_casi += r1["tencasi"].ToString() + ", ";
                    }
                }
                li.SubItems.Add(cac_casi + "...");
                li.SubItems.Add(dr["tentheloai"].ToString());
                li.SubItems.Add(dr["loibaihat"].ToString());
                li.Tag = dr["mabaihat"];
            }
            stt(listView1);
        }

        private string matheloaidangchon;

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

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void hienbaihat_cbo(DataView dv)
        {
            foreach (DataRowView dr in dv)
            {
                ListViewItem li = listView2.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
                li.SubItems.Add(dr["loibaihat"].ToString());
                li.Tag = dr["mabaihat"];
            }
            stt(listView2);
        }

        private void cboTL_SelectedIndexChanged(object sender, EventArgs e)
        {
            listView2.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaiHat_BaiHat);
            dvBaiHat.RowFilter = "matheloai = '" + cboTL.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboAlbum_SelectedIndexChanged(object sender, EventArgs e)
        {
            listView2.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaiHat_BaiHat);
            dvBaiHat.RowFilter = "maalbum = '" + cboAlbum.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboCasi_SelectedIndexChanged(object sender, EventArgs e)
        {
            listView2.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaiHat_BaiHat);
            dvBaiHat.RowFilter = "macasi = '" + cboCasi.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboTacgia_SelectedIndexChanged(object sender, EventArgs e)
        {
            listView2.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaiHat_BaiHat);
            dvBaiHat.RowFilter = "matacgia = '" + cboTacgia.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            ThemBaiHat f = new ThemBaiHat();
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
                load_Baihat();
            this.Visible = true;
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (listView2.SelectedItems.Count == 0)
                return;
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa bài hát [" + listView2.SelectedItems[0].SubItems[1].Text + "]  không ?", "xóa bài hát", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string mabaihatdcchon = listView2.SelectedItems[0].Tag.ToString();
            BaiHat_BUS a = new BaiHat_BUS(mabaihatdcchon);
            int loi = a.xoaBaiHat();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã bài hát [" + mabaihatdcchon + "] ", "thành công hehe", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("xóa thất bại mã bài hát [" + mabaihatdcchon + "] ", "thất bại huhu", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            load_Baihat();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //if (listView2.SelectedItems.Count == 0)
            //    return;
            //this.Visible = false;
            //SuaBaiHat f = new SuaBaiHat();
            //f.ma = listView2.SelectedItems[0].Tag.ToString();
            //f.ten = listView2.SelectedItems[0].SubItems[1].Text;
            //f.loibaihat = listView2.SelectedItems[0].SubItems[2].Text;
            //f.matheloai = cboTL.SelectedValue.ToString();
            //f.maalbum = cboAlbum.SelectedValue.ToString();
            //f.macasi = cboCasi.SelectedValue.ToString();
            //f.matacgia = cboTacgia.SelectedValue.ToString();

            //f.ShowDialog();
            //if (f.DialogResult == DialogResult.OK)
            //    load_Baihat();
            //this.Visible = true;
        }
    }
    
}

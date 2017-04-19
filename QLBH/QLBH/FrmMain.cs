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
        bool danapxong_lstBox = false;
        private DataTable dtNhacsi;
        private DataTable dtBaiHat;


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
        private void Load_NhacSi()
        {
            dtNhacsi = new NhacSi_BUS().GetNhacSi();
            lstNhacSi.DataSource = dtNhacsi;
            lstNhacSi.DisplayMember = "tentacgia";
            lstNhacSi.ValueMember = "matacgia";

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
            Load_NhacSi();
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
















        private static string[] VietNamChar = new string[]
        {
           "aAeEoOuUiIdDyY",
           "áàạảãâấầậẩẫăắằặẳẵ",
           "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",
           "éèẹẻẽêếềệểễ",
           "ÉÈẸẺẼÊẾỀỆỂỄ",
           "óòọỏõôốồộổỗơớờợởỡ",
           "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",
           "úùụủũưứừựửữ",
           "ÚÙỤỦŨƯỨỪỰỬỮ",
           "íìịỉĩ",
           "ÍÌỊỈĨ",
           "đ",
           "Đ",
           "ýỳỵỷỹ",
           "ÝỲỴỶỸ"
        };
        // ham thay the tieng viet co dau sang k dau
        public static string ThayThe_Unicode(string strInput)
        {
            for (int i = 1; i < VietNamChar.Length; i++)
            {
                for (int j = 0; j < VietNamChar[i].Length; j++)
                {
                    strInput = strInput.Replace(VietNamChar[i][j], VietNamChar[0][i - 1]);
                }
            }
            return strInput;
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

        
        private void hienbaihat(DataView dv, ListView lvw)
        {
            lvw.Items.Clear();
            foreach (DataRowView dr in dv)
            {
                ListViewItem li = lvw.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
            }
            stt(lvw);
        }
        
        private void lstNhacSi_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (danapxong_lstBox)
            {
                if (lstNhacSi.SelectedItems.Count == 0)
                    return;
                DataView dv = new DataView(dtNhacsi);
                dv.RowFilter = "matacgia = '" + lstNhacSi.SelectedValue + "'";
                string tennhacsi = "";
                foreach (DataRowView dr in dv)
                {
                    tennhacsi = lbtennhacsi.Text = dr["tentacgia"].ToString();
                    txtthongtinnhacsi.Text = dr["thongtintacgia"].ToString();
                }
                if (txtthongtinnhacsi.Text.Trim().Equals(""))
                    txtthongtinnhacsi.Text = "Chưa có thông tin cho nhạc sĩ : [" + tennhacsi + "]";
                dtBaiHat = new BaiHat_BUS().getBaiHat();
                DataView dvBaihat = new DataView(dtBaiHat);
                dvBaihat.RowFilter = "matacgia = '" + lstNhacSi.SelectedValue + "'";
                hienbaihat(dvBaihat, lvwsangtac);
                //dtNhacsi_baihat = new NhacSi_BUS().GetNhacsi_baihat(lstNhacSi.SelectedValue.ToString());
            }
        }
        
        private void btnThem_NS_Click_1(object sender, EventArgs e)
        {
            this.Visible = false;
            frm_ThemNhacSi f = new frm_ThemNhacSi();
            f.ShowDialog();
            this.Visible = true;
            Load_NhacSi();
        }
        
        private void btnXoa_NS_Click_1(object sender, EventArgs e)
        {
            if (lstNhacSi.SelectedItems.Count == 0)
                return;
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa nhạc sĩ [" + lbtennhacsi.Text + "] và tất cả bài hát do nhạc sĩ này viết không ?", "xóa tác giả", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string manhacsidcchon = lstNhacSi.SelectedValue.ToString();
            NhacSi_BUS a = new NhacSi_BUS(manhacsidcchon);
            int loi = a.xoaTacGia();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã nhạc sĩ [" + manhacsidcchon + "] ", "thành công hehe", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("xóa thất bại mã nhạc sĩ [" + manhacsidcchon + "] ", "thất bại huhu", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            Load_NhacSi();
            loadlai_listview();
        }


















        //Tim` Kiem TAB SEARCH
        private void btnTim_Click(object sender, EventArgs e)
        {
            lvwAlbum_TKiem.Items.Clear(); lvwBaiHat_TKiem.Items.Clear(); lvwCaSi_TKiem.Items.Clear(); lvwHangSanXuat.Items.Clear(); lvwLoiBaiHat.Items.Clear();

            if (txtTimKiem.Text.Trim().Equals("") || txtTimKiem.ForeColor != Color.Black)
            {
                MessageBox.Show("Bạn hãy nhập nội dung cần tìm!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTimKiem_Click(null, null);
                txtTimKiem.Focus();
                return;
            }
            //MessageBox.Show("Viết code đi may` ");
            // lam` tiep o day
            try
            {
               
                DataTable dtBaiHat_TimKiem = new BaiHat_BUS().getBaiHat();
                foreach (DataRow dr in dtBaiHat_TimKiem.Rows)
                {
                    if (ThayThe_Unicode(dr["tenbaihat"].ToString()).Trim().ToLower().Contains(ThayThe_Unicode(txtTimKiem.Text).Trim().ToLower()))
                    {
                        ListViewItem li = lvwBaiHat_TKiem.Items.Add("");
                        li.SubItems.Add(dr["mabaihat"].ToString());
                        li.SubItems.Add(dr["tenbaihat"].ToString());
                        li.Tag = dr["mabaihat"];
                        //-----------------------------------------------

                    }
                }
                if (lvwBaiHat_TKiem.Items.Count == 0)
                {
                    ListViewItem i = lvwBaiHat_TKiem.Items.Add("null");
                    i.SubItems.Add("(Không tìm thấy !!!)"); i.SubItems.Add("(Không tìm thấy !!!)");

                }
                stt(lvwBaiHat_TKiem); stt(lvwLoiBaiHat);

                //------------------------------------------------------------------------------------------
                DataTable dtAlbum_timkiem = new Album_BUS().getAlbum();
                foreach (DataRow dr in dtAlbum_timkiem.Rows)
                {
                    if (ThayThe_Unicode(dr["tenalbum"].ToString()).Trim().ToLower().Contains(ThayThe_Unicode(txtTimKiem.Text).Trim().ToLower()) || dr["namphathanh"].ToString().Trim().ToLower().Contains(txtTimKiem.Text.Trim().ToLower()))
                    {
                        ListViewItem li = lvwAlbum_TKiem.Items.Add("");
                        li.SubItems.Add(dr["maalbum"].ToString());
                        li.SubItems.Add(dr["tenalbum"].ToString());
                        li.SubItems.Add(dr["namphathanh"].ToString());
                        li.Tag = dr["maalbum"];
                    }
                }
                if (lvwAlbum_TKiem.Items.Count == 0)
                {
                    ListViewItem i = lvwAlbum_TKiem.Items.Add("null");
                    i.SubItems.Add("(Không tìm thấy !!!)"); i.SubItems.Add("(Không tìm thấy !!!)");
                }
                stt(lvwAlbum_TKiem);

                //-------------------------------------------------------------------------------------------------
                DataTable dtCasi_timkiem = new CaSi_BUS().getCaSi();
                foreach (DataRow dr in dtCasi_timkiem.Rows)
                {
                    if (ThayThe_Unicode(dr["tencasi"].ToString()).Trim().ToLower().Contains(ThayThe_Unicode(txtTimKiem.Text).Trim().ToLower()))
                    {
                        ListViewItem li = lvwCaSi_TKiem.Items.Add("");
                        li.SubItems.Add(dr["macasi"].ToString());
                        li.SubItems.Add(dr["tencasi"].ToString());
                        //li.SubItems.Add(dr["namphathanh"].ToString());
                        li.Tag = dr["macasi"];
                    }
                }
                if (lvwCaSi_TKiem.Items.Count == 0)
                {
                    ListViewItem i = lvwCaSi_TKiem.Items.Add("null");
                    i.SubItems.Add("(Không tìm thấy !!!)"); i.SubItems.Add("(Không tìm thấy !!!)");
                }
                stt(lvwCaSi_TKiem);

                //-------------------------------------------------------------------------------------------------
               

                //-------------------------------------------------------------------------------------------------
                DataTable dtLoiBH = new BaiHat_BUS().getBaiHat();
                foreach (DataRow dr in dtLoiBH.Rows)
                {
                    if (ThayThe_Unicode(dr["loibaihat"].ToString()).Trim().ToLower().Contains(ThayThe_Unicode(txtTimKiem.Text).Trim().ToLower()))
                    {
                        ListViewItem i = lvwLoiBaiHat.Items.Add("");
                        i.SubItems.Add(dr["tenbaihat"].ToString());
                        i.SubItems.Add(dr["mabaihat"].ToString());
                        i.SubItems.Add(dr["loibaihat"].ToString());
                        i.Tag = dr["mabaihat"];
                    }
                }
                if (lvwLoiBaiHat.Items.Count == 0)
                {
                    ListViewItem i = lvwLoiBaiHat.Items.Add("null");
                    i.SubItems.Add("(Không tìm thấy !!!)"); i.SubItems.Add("(Không tìm thấy !!!)");
                }
                stt(lvwLoiBaiHat);

                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ---> " + ex.Message.ToString());
            }
            txtTimKiem.AutoCompleteCustomSource.Add(txtTimKiem.Text);
        }

        private void txtTimKiem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
                btnTim_Click(null, null);
        }

        private void txtTimKiem_Leave(object sender, EventArgs e)
        {
            if (!txtTimKiem.Text.Trim().Equals(""))
                return;
            txtTimKiem.Font = new Font("Microsoft Sans Serif", 16F, FontStyle.Italic);
            txtTimKiem.ForeColor = SystemColors.InactiveCaption;
            txtTimKiem.Text = "(Gõ nội dung cần tìm ...)";
        }

        private void txtTimKiem_Click(object sender, EventArgs e)
        {
            if (txtTimKiem.ForeColor == Color.Black)
                return;
            txtTimKiem.Font = new Font("Microsoft Sans Serif", 16F, FontStyle.Regular);
            txtTimKiem.ForeColor = Color.Black;
            txtTimKiem.Clear();
        }

       
    }
    
}

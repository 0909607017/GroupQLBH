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
        private DataTable dtBaihat_cbo;
        private DataTable dtCasi;
        private DataTable dtCasi_Baihat;
        private DataTable dtAlbum;
        private DataTable dtTheLoai;
        bool danapxong_lstBox = false;
        private DataTable dtNhacsi;
        private DataTable dtBaiHat;
        private DataTable dtBaihat_Home;

        private void FrmMain_Load(object sender, EventArgs e)
        {
            
            
            Load_TheLoai();
            load_Casi();
            Load_NhacSi();
            load_BaiHat_Home();
            load_Album();
            Load_combobox_baihat();
            Load_Baihat_cbo();
            danapxong_lstBox = true;

        }

        private void thôngTinSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Các sinh viên thực hiện:\nPhạm Nguyễn Xuân Phúc - 1451010135\nTrần Dũng Danh - 1451010025\nLê Thanh Phước - 1451010143\nTrương Quang Tân - 1451010172");
        }


        int pageNumber = 1;
        int totalRecord = 0;
        int numberRecord = 60;
        List<BAIHAT> LoadRecord(int page, int recordNum)
        {

            List<BAIHAT> list = new List<BAIHAT>();

            using (DataClasses1DataContext myDP = new DataClasses1DataContext())
            {
                list = myDP.BAIHATs.Skip((page - 1) * recordNum).Take(numberRecord).ToList();
            }

            return list;
        }

        private void load_BaiHat_Home()
        {
            //dtBaihat_Home = new BaiHat_BUS().getBaiHat_home();
            //foreach (DataRow dr in dtBaihat_Home.Rows)
            //{
            //    ListViewItem li = lisBaihat_Home.Items.Add("");
            //    li.SubItems.Add(dr["tenbaihat"].ToString());
            //    li.SubItems.Add(dr["tenalbum"].ToString());
            //    DataTable dt = new Casi_Baihat_BUS().getCasi_BaiHat_by_mabaihat(dr["mabaihat"].ToString());
            //    string cac_casi = "";
            //    foreach (DataRow r in dt.Rows)
            //    {
            //        DataTable dtcasi = new CaSi_BUS().getCasi_by_macasi(r["macasi"].ToString());
            //        foreach (DataRow r1 in dtcasi.Rows)
            //        {
            //            cac_casi += r1["tencasi"].ToString() + ", ";
            //        }
            //    }
            //    li.SubItems.Add(cac_casi + "...");
            //    li.SubItems.Add(dr["tentheloai"].ToString());
            //    li.SubItems.Add(dr["loibaihat"].ToString());
            //    li.Tag = dr["mabaihat"];
            //}
            //stt(lisBaihat_Home);
            using (DataClasses1DataContext myDP = new DataClasses1DataContext())
            {
                totalRecord = myDP.BAIHATs.Count();
            }
            dataGridView1.DataSource = LoadRecord(pageNumber, numberRecord);
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

  
        private void Load_TheLoai()
        {
            dtTheLoai = new TheLoai_BUS().GetTL();
            dataGridView2.DataSource = dtTheLoai;
        }

        private void Load_Baihat_cbo()
        {
            dtBaihat_cbo = new BaiHat_BUS().getBaiHat();
            foreach (DataRow dr in dtBaihat_cbo.Rows)
            {
                ListViewItem li = lisBaihat.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
                li.SubItems.Add(dr["loibaihat"].ToString());
                li.Tag = dr["mabaihat"];
            }
            stt(lisBaihat);
        }

        private void Load_combobox_baihat()
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

            cboTacgia.DataSource = dtNhacsi;
            cboTacgia.DisplayMember = "tentacgia";
            cboTacgia.ValueMember = "matacgia";
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
            DataRowView dv = (DataRowView)lisAlbum.SelectedItem;
            String tenalbum = dv["tenalbum"].ToString();
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Album [" + tenalbum + "] và tất cả bài hát trong album này không ?", "Waring!!!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
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
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Thể loại " + matheloaidangchon + " này không ?", "Waring!!!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;
            TheLoai_BUS a = new TheLoai_BUS(matheloaiđangcchon);
            int loi = a.xoaTheLoai();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công","Thành công",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            else
                MessageBox.Show("Xóa thất bại", "Thất bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa Ca sĩ [" + lblTenCaSi.Text + "] và tất cả bài hát do ca sĩ này trình bày không ?", "Xóa ca sĩ!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string macasidangchon = lstDanhSachCaSi.SelectedValue.ToString();
            CaSi_BUS a = new CaSi_BUS(macasidangchon);
            int loi = a.xoaCasi();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã ca sĩ [" + macasidangchon + "] ", "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("xóa thất bại mã ca sĩ [" + macasidangchon + "] ", "Thất bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa nhạc sĩ [" + lbtennhacsi.Text + "] và tất cả bài hát do nhạc sĩ này viết không ?", "Xóa tác giả!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string manhacsidcchon = lstNhacSi.SelectedValue.ToString();
            NhacSi_BUS a = new NhacSi_BUS(manhacsidcchon);
            int loi = a.xoaTacGia();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã nhạc sĩ [" + manhacsidcchon + "] ", "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("xóa thất bại mã nhạc sĩ [" + manhacsidcchon + "] ", "Thất bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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

                DataTable dtNhacsi_timkiem = new NhacSi_BUS().GetNhacSi();
                foreach (DataRow dr in dtNhacsi_timkiem.Rows)
                {
                    if (ThayThe_Unicode(dr["tentacgia"].ToString()).Trim().ToLower().Contains(ThayThe_Unicode(txtTimKiem.Text).Trim().ToLower()))
                    {
                        ListViewItem li = lvwNhacsi_Tkiem.Items.Add("");
                        li.SubItems.Add(dr["matacgia"].ToString());
                        li.SubItems.Add(dr["tentacgia"].ToString());
                        li.SubItems.Add(dr["thongtintacgia"].ToString());
                        li.Tag = dr["matacgia"];
                    }
                }
                if (lvwNhacsi_Tkiem.Items.Count == 0)
                {
                    ListViewItem i = lvwNhacsi_Tkiem.Items.Add("null");
                    i.SubItems.Add("(Không tìm thấy !!!)"); i.SubItems.Add("(Không tìm thấy !!!)");
                }
                stt(lvwNhacsi_Tkiem);
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

        private void groupBox1_Enter(object sender, EventArgs e)  { }

        private void hienbaihat_cbo(DataView dv)
        {
            foreach (DataRowView dr in dv)
            {
                ListViewItem li = lisBaihat.Items.Add("");
                li.SubItems.Add(dr["tenbaihat"].ToString());
                li.SubItems.Add(dr["loibaihat"].ToString());
                li.Tag = dr["mabaihat"];
            }
            stt(lisBaihat);
        }
        private void cboTL_SelectedIndexChanged(object sender, EventArgs e)
        {
            lisBaihat.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaihat_cbo);
            dvBaiHat.RowFilter = "matheloai = '" + cboTL.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboAlbum_SelectedIndexChanged(object sender, EventArgs e)
        {
            lisBaihat.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaihat_cbo);
            dvBaiHat.RowFilter = "maalbum = '" + cboAlbum.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboCasi_SelectedIndexChanged(object sender, EventArgs e)
        {
            lisBaihat.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaihat_cbo);
            dvBaiHat.RowFilter = "macasi = '" + cboCasi.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void cboTacgia_SelectedIndexChanged(object sender, EventArgs e)
        {
            lisBaihat.Items.Clear();
            DataView dvBaiHat = new DataView(dtBaihat_cbo);
            dvBaiHat.RowFilter = "matacgia = '" + cboTacgia.SelectedValue.ToString() + "'";
            hienbaihat_cbo(dvBaiHat);
        }

        private void btthembh_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            frm_ThemBaiHat f = new frm_ThemBaiHat();
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
                Load_Baihat_cbo();
            this.Visible = true;
        }

        private void btxoabh_Click(object sender, EventArgs e)
        {
            if (lisBaihat.SelectedItems.Count == 0)
                return;
            DialogResult drl = MessageBox.Show("Bạn thực sự muốn xóa bài hát [" + lisBaihat.SelectedItems[0].SubItems[1].Text + "]  không ?", "xóa bài hát", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (drl == DialogResult.Cancel)
                return;

            string mabaihatdcchon = lisBaihat.SelectedItems[0].Tag.ToString();
            BaiHat_BUS a = new BaiHat_BUS(mabaihatdcchon);
            int loi = a.xoaBaiHat();
            if (loi == 0)
                MessageBox.Show("Đã xóa thành công mã bài hát [" + mabaihatdcchon + "] ", "Thành Công !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            else
                MessageBox.Show("Xóa thất bại mã bài hát [" + mabaihatdcchon + "] ", "Thất Bại !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            Load_Baihat_cbo();
        }

        private void btsuabh_Click(object sender, EventArgs e)
        {
            if (lisBaihat.SelectedItems.Count == 0)
                return;
            this.Visible = false;

            

            frm_SuaBaiHat f = new frm_SuaBaiHat();

            f.ShowDialog();
            f.ma = lisBaihat.SelectedItems[0].Tag.ToString();
            f.ten = lisBaihat.SelectedItems[0].SubItems[1].Text;
            f.loibaihat = lisBaihat.SelectedItems[0].SubItems[2].Text;
            f.matheloai = cboTL.SelectedValue.ToString();
            f.maalbum = cboAlbum.SelectedValue.ToString();
            f.macasi = cboCasi.SelectedValue.ToString();
            f.matacgia = cboTacgia.SelectedValue.ToString();

            
            if (f.DialogResult == DialogResult.OK)
                Load_Baihat_cbo();
            this.Visible = true;
        }

        private void lisBaihat_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lisBaihat.SelectedItems.Count == 0)
                return;
            DataTable dtBH = new BaiHat_BUS().getBaiHat_by_mabaihat(lisBaihat.SelectedItems[0].Tag.ToString());
            DataView dv = new DataView(dtBH);
            foreach (DataRow dr in dtBH.Rows)
            {
                cboTL.SelectedValue = dr["matheloai"].ToString();

                cboAlbum.SelectedValue = dr["maalbum"].ToString();
                cboCasi.SelectedValue = dr["macasi"].ToString();
                cboTacgia.SelectedValue = dr["matacgia"].ToString();
            }
        }

        private void bthienbh_Click(object sender, EventArgs e)
        {
            cboAlbum.Text = "";
            cboCasi.Text = "";
            cboTacgia.Text = "";
            cboTL.Text = "";
            lisBaihat.Items.Clear();
            Load_Baihat_cbo();
        }

        private void lisAlbum_DoubleClick(object sender, EventArgs e)
        {
            if (lisAlbum.SelectedItems.Count == 0)
                return;
            this.Visible = false;
            DataRowView dv = (DataRowView)lisAlbum.SelectedItem;
            String tenalbum = dv["tenalbum"].ToString();
            String namphathanh = dv["namphathanh"].ToString();
            frm_SuaAlbum f = new frm_SuaAlbum();
            // gán 
            f.ma = lisAlbum.SelectedValue.ToString();
            f.ten = tenalbum;
            f.namphathanh = namphathanh;
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
                loadlai_listview();
            this.Visible = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (pageNumber > 1)
            {
                pageNumber--;
                dataGridView1.DataSource = LoadRecord(pageNumber, numberRecord);
                lbsotrang.Text = pageNumber.ToString();
            }
            else
            {
                MessageBox.Show("Đã xuống trang cuối cùng","Waring!!!",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (pageNumber - 1 < totalRecord / numberRecord)
            {
                pageNumber++;
                dataGridView1.DataSource = LoadRecord(pageNumber, numberRecord);
                lbsotrang.Text = pageNumber.ToString();
            }
            else
            {
                MessageBox.Show("Đã lên trang cuối cùng","Waring!!!",MessageBoxButtons.OK,MessageBoxIcon.Exclamation);
            }
        }

        private void lstDanhSachCaSi_DoubleClick(object sender, EventArgs e)
        {
            this.Visible = false;
            DataRowView dv = (DataRowView)lstDanhSachCaSi.SelectedItem;
            String tencasi = dv["tencasi"].ToString();
            String thongtincasi = dv["thongtincasi"].ToString();
            frm_SuaCaSi f = new frm_SuaCaSi();
            f.ma = lstDanhSachCaSi.SelectedValue.ToString();
            f.ten = tencasi;
            if (txtThongTinCaSi.Text.Contains("Chưa có thông tin cho ca sĩ"))
                f.thongtin = "";
            else
                f.thongtin = thongtincasi;
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                lstDanhSachCaSi.DataSource = null;
                load_Casi();
            }
            this.Visible = true;
        }

        private void lstNhacSi_DoubleClick(object sender, EventArgs e)
        {
            this.Visible = false;
            DataRowView dv = (DataRowView)lstNhacSi.SelectedItem;
            String tennhacsi = dv["tentacgia"].ToString();
            String thongtintacgia = dv["thongtintacgia"].ToString();
            frm_SuaTacGia f = new frm_SuaTacGia();
            f.ma = lstNhacSi.SelectedValue.ToString();
            f.ten = tennhacsi;
            if (txtthongtinnhacsi.Text.Contains("Chưa có thông tin tác giả "))
                f.thongtin = "";
            else
                f.thongtin = thongtintacgia;
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                lstDanhSachCaSi.DataSource = null;
                Load_NhacSi();
            }
            this.Visible = true;
        }

        private void baihatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(baihatToolStripMenuItem))
                tabControl1.SelectedIndex = 1;
        }

        private void thểLoạiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(thểLoạiToolStripMenuItem))
                tabControl1.SelectedIndex = 2;
        }

        private void albumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(albumToolStripMenuItem))
                tabControl1.SelectedIndex = 3;
        }

        private void casiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(casiToolStripMenuItem))
                tabControl1.SelectedIndex = 4;
        }

        private void nhacsiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(nhacsiToolStripMenuItem))
                tabControl1.SelectedIndex = 5;
        }

        private void tìmKiếmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            if (tsmi.Equals(tìmKiếmToolStripMenuItem))
                tabControl1.SelectedIndex = 6;
        }

        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("BẠN CHẮC CHẮN MUỐN ĐÓNG ỨNG DỤNG ?", "THOÁT CHƯƠNG TRÌNH", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                this.Close();
        }

        private void cácChứcNăngChưaHoànThànhToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Chưa hoàn thành phần tìm kiếm bằng tên viết tắt", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }




 





    }
    
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS;
using System.Data.SqlClient;

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
        private DataTable dtTheloai;
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
        private void load_Theloai()
        {   
            dtTheloai = new TheLoai_BUS().GetTL();
            dataGridView2.DataSource = dtTheloai;
            
        }
        private void FrmMain_Load(object sender, EventArgs e)
        {
            load_Casi();
            danapxong_lstBox = true;
            load_Theloai();
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

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView3_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        private string matheloai;
        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dataGridView2.CurrentCell.RowIndex;
            matheloai = dataGridView2.Rows[index].Cells[0].Value.ToString().Trim();
            DataTable dt = new DataTable();
            dt = new TheLoai_BUS().GetBaiHat(matheloai);
            dataGridView3.DataSource = dt;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            ThemTL frm = new ThemTL();
            frm.Show();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection();

            string xoa = "DELETE FROM THELOAI WHERE matheloai = @id";
            SqlCommand cmd = new SqlCommand(xoa,cn);
            cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50, "matheloai");
            da.DeleteCommand = cmd;
            load_Theloai();
        }
    }

    
    
}

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

        private void FrmMain_Load(object sender, EventArgs e)
        {
            load_Casi();
            danapxong_lstBox = true;
      
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
       
    }


    
}

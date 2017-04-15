namespace QLBH
{
    partial class frmThemAlbum
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbthemalbum = new System.Windows.Forms.Label();
            this.lbmaalbum = new System.Windows.Forms.Label();
            this.lbtenalbum = new System.Windows.Forms.Label();
            this.lbnam = new System.Windows.Forms.Label();
            this.tbmaalbum = new System.Windows.Forms.TextBox();
            this.tbtenalbum = new System.Windows.Forms.TextBox();
            this.tbnam = new System.Windows.Forms.TextBox();
            this.btOk = new System.Windows.Forms.Button();
            this.btNhaplai = new System.Windows.Forms.Button();
            this.btHuy = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbthemalbum
            // 
            this.lbthemalbum.Font = new System.Drawing.Font("Modern No. 20", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbthemalbum.Location = new System.Drawing.Point(106, 9);
            this.lbthemalbum.Name = "lbthemalbum";
            this.lbthemalbum.Size = new System.Drawing.Size(296, 42);
            this.lbthemalbum.TabIndex = 0;
            this.lbthemalbum.Text = "Thêm Album mới";
            // 
            // lbmaalbum
            // 
            this.lbmaalbum.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbmaalbum.Location = new System.Drawing.Point(12, 70);
            this.lbmaalbum.Name = "lbmaalbum";
            this.lbmaalbum.Size = new System.Drawing.Size(153, 23);
            this.lbmaalbum.TabIndex = 1;
            this.lbmaalbum.Text = "Mã Album (50 ký tự):";
            // 
            // lbtenalbum
            // 
            this.lbtenalbum.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbtenalbum.Location = new System.Drawing.Point(12, 119);
            this.lbtenalbum.Name = "lbtenalbum";
            this.lbtenalbum.Size = new System.Drawing.Size(168, 23);
            this.lbtenalbum.TabIndex = 1;
            this.lbtenalbum.Text = "Tên Album (100 ký tự):";
            // 
            // lbnam
            // 
            this.lbnam.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbnam.Location = new System.Drawing.Point(12, 172);
            this.lbnam.Name = "lbnam";
            this.lbnam.Size = new System.Drawing.Size(182, 23);
            this.lbnam.TabIndex = 1;
            this.lbnam.Text = "Năm phát hành (4 ký tự):";
            // 
            // tbmaalbum
            // 
            this.tbmaalbum.Location = new System.Drawing.Point(201, 70);
            this.tbmaalbum.Name = "tbmaalbum";
            this.tbmaalbum.Size = new System.Drawing.Size(275, 20);
            this.tbmaalbum.TabIndex = 2;
            // 
            // tbtenalbum
            // 
            this.tbtenalbum.Location = new System.Drawing.Point(201, 122);
            this.tbtenalbum.Name = "tbtenalbum";
            this.tbtenalbum.Size = new System.Drawing.Size(275, 20);
            this.tbtenalbum.TabIndex = 2;
            // 
            // tbnam
            // 
            this.tbnam.Location = new System.Drawing.Point(201, 175);
            this.tbnam.Name = "tbnam";
            this.tbnam.Size = new System.Drawing.Size(275, 20);
            this.tbnam.TabIndex = 2;
            // 
            // btOk
            // 
            this.btOk.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btOk.Location = new System.Drawing.Point(34, 220);
            this.btOk.Name = "btOk";
            this.btOk.Size = new System.Drawing.Size(90, 29);
            this.btOk.TabIndex = 3;
            this.btOk.Text = "Đồng Ý";
            this.btOk.UseVisualStyleBackColor = true;
            this.btOk.Click += new System.EventHandler(this.btOk_Click);
            // 
            // btNhaplai
            // 
            this.btNhaplai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btNhaplai.Location = new System.Drawing.Point(201, 220);
            this.btNhaplai.Name = "btNhaplai";
            this.btNhaplai.Size = new System.Drawing.Size(90, 29);
            this.btNhaplai.TabIndex = 3;
            this.btNhaplai.Text = "Nhập Lại";
            this.btNhaplai.UseVisualStyleBackColor = true;
            this.btNhaplai.Click += new System.EventHandler(this.btNhaplai_Click);
            // 
            // btHuy
            // 
            this.btHuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btHuy.Location = new System.Drawing.Point(363, 220);
            this.btHuy.Name = "btHuy";
            this.btHuy.Size = new System.Drawing.Size(90, 29);
            this.btHuy.TabIndex = 3;
            this.btHuy.Text = "Hủy";
            this.btHuy.UseVisualStyleBackColor = true;
            this.btHuy.Click += new System.EventHandler(this.btHuy_Click);
            // 
            // frmThemAlbum
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(489, 264);
            this.Controls.Add(this.btHuy);
            this.Controls.Add(this.btNhaplai);
            this.Controls.Add(this.btOk);
            this.Controls.Add(this.tbnam);
            this.Controls.Add(this.tbtenalbum);
            this.Controls.Add(this.tbmaalbum);
            this.Controls.Add(this.lbnam);
            this.Controls.Add(this.lbtenalbum);
            this.Controls.Add(this.lbmaalbum);
            this.Controls.Add(this.lbthemalbum);
            this.MaximizeBox = false;
            this.Name = "frmThemAlbum";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmThemAlbum";
            this.Load += new System.EventHandler(this.frmThemAlbum_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbthemalbum;
        private System.Windows.Forms.Label lbmaalbum;
        private System.Windows.Forms.Label lbtenalbum;
        private System.Windows.Forms.Label lbnam;
        private System.Windows.Forms.TextBox tbmaalbum;
        private System.Windows.Forms.TextBox tbtenalbum;
        private System.Windows.Forms.TextBox tbnam;
        private System.Windows.Forms.Button btOk;
        private System.Windows.Forms.Button btNhaplai;
        private System.Windows.Forms.Button btHuy;
    }
}
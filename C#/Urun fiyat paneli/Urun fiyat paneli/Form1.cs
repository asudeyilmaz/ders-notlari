using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Urun_fiyat_paneli
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string ad = textBox1.Text;
            int fiyat = Convert.ToInt32(textBox2.Text);
            double kdv1 = fiyat * 1.18;
            double kdv2 = fiyat * 1.08;
            listBox1.Items.Add("Ürün adı: " + ad + " %18 KDV: " + kdv1 + " %8 KDV: " + kdv2 );
            
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Dikdörtgen_alan_ve_çevre_hesabı
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int kisaKenar = Convert.ToInt32(textBox1.Text);
            int uzunKenar = Convert.ToInt32(textBox2.Text);
            int alan = uzunKenar * kisaKenar;
            int cevre = (uzunKenar * 2) + (kisaKenar * 2);

            textBox3.Text = Convert.ToString(alan);
            textBox4.Text = Convert.ToString(cevre);
        }
    }
}

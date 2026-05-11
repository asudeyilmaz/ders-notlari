using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Öğrenci_Ortalamak_Hesabı
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int sinav1 = Convert.ToInt32(textBox1.Text);
            int sinav2 = Convert.ToInt32(textBox2.Text);
            int sinav3 = Convert.ToInt32(textBox3.Text);

            int ortalama = (sinav1 + sinav2 + sinav3) / 3;

            textBox4.Text  =   Convert.ToString(ortalama);
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cemberin_alan_ve_Cevresi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double pi = 3.14;
            int yariCap = Convert.ToInt32(textBox1.Text);

            double alan = pi * (yariCap * yariCap);
            double cevre = 2* pi* yariCap;

            textBox2.Text = alan.ToString("0.00");
            textBox3.Text = cevre.ToString("0.00");
        }
    }
}

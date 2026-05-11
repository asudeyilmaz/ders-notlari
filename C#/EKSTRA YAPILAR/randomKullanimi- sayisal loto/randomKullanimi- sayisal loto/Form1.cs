using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace randomKullanimi__sayisal_loto
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Random rast = new Random();
            int s1, s2, s3, s4;
            s1 = rast.Next(1,5);
            s2 = rast.Next(1,5);
            s3 = rast.Next(1,5);
            s4 = rast.Next(1,5);

            label1.Text = s1.ToString();
            label2.Text = s2.ToString();    
            label3.Text = s3.ToString();
            label4.Text = s4.ToString();

            karsilastirma krs = new karsilastirma(label1.Text, textBox1.Text, textBox1);
            karsilastirma krs2 = new karsilastirma(label2.Text , textBox2.Text , textBox2 );
            karsilastirma krs3 = new karsilastirma(label3.Text, textBox3.Text, textBox3);
            karsilastirma krs4 = new karsilastirma(label4.Text, textBox4.Text, textBox4);

        }
    }
}

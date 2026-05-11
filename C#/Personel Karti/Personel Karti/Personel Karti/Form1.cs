using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Personel_Karti
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label5.Text = "Adı: " + textBox1.Text + " Soyadı: " + textBox2.Text + " Mesleği: " + textBox3.Text + " Yaşı: " + maskedTextBox1.Text + " Cinsiyeti: " + textBox4.Text;
            listBox1.Items.Add(label5.Text);
        }
    }
}

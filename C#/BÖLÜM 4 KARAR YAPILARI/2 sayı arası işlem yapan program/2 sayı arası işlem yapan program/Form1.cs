using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _2_sayı_arası_işlem_yapan_program
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int s1, s2;
            s1 = Convert.ToInt32(textBox1.Text);
            s2 = Convert.ToInt32(textBox2.Text);
            string sembol = Convert.ToString(textBox3.Text);

            switch (sembol)
            {
                case "+": textBox4.Text = Convert.ToString(s1 + s2); break;
                case "-": textBox4.Text = Convert.ToString(s1 - s2); break;
                case "*": textBox4.Text = Convert.ToString(s1 * s2); break;
                case "/": textBox4.Text = Convert.ToString(s1 / s2); break;
                default: textBox4.Text = "Geçersiz işlem"; break;

            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Alışveriş_İndirim_Tutar_Hesaplama
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int kitapAdet = Convert.ToInt32(textBox1.Text);
            double toplam;
            if (kitapAdet >= 0 &&  kitapAdet <= 20)
            {
                toplam = (kitapAdet * 8) - (kitapAdet * 8 * 0.20);
                label3.Text = toplam + " TL";
            }
            if (kitapAdet >= 21 && kitapAdet <= 40)
            {
                toplam = (kitapAdet * 8) - (kitapAdet * 8 * 0.40);
                label3.Text = toplam + " TL";
            }
            if (kitapAdet >= 41)
            {
                toplam = (kitapAdet * 8) - (kitapAdet * 8 * 0.50);
                label3.Text = toplam + " TL";
            }


        }
    }
}
// 00-20  %20
// 21-40  %40
// 41++ %50
// kitap 8 tl
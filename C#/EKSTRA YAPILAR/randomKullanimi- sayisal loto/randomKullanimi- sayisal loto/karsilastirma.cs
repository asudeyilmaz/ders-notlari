using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace randomKullanimi__sayisal_loto
{
    internal class karsilastirma
    {
        public  karsilastirma(string labelText, string textBoxText, TextBox txt) 
        {
            
            if (labelText == textBoxText)
            {
                txt.BackColor = Color.Green;
            }else
            {
                txt.BackColor = Color.Red;
            }
        }
    }
}

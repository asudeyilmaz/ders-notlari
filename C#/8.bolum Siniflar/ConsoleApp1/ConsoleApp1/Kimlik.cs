using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp1
{
    internal class Kimlik
    {
        string ad;
        string soyad;
        int yas;
        string meslek;
        char cinsiyet;

        public string AD { get { return ad; } set { ad = value; } }
        public string SOYAD
        {
            get { return soyad; }
            set { soyad = value; }


        }
        public int YAS
        {
            get { return yas; }
            set { yas = value; }
        }
        public string MESLEK
        {
            get { return meslek; }
            set { meslek = value; }
        }
        public char CINSIYET
        {
            get { return cinsiyet; }
            set { cinsiyet = value; }
        }

        public Kimlik()
        {
            string ad = "";
            string soyad = "";
            int yas = 18;
            string meslek = "";
            char cinsiyet = 'K';
        }
    }
}
using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp1
{
    internal class islemlerAlistirma
    {
        public int topla(int x, int y)
        {
            int sonuc = x + y;
            return sonuc;
        }

        public int Cikar(int x, int y)
        {
            return x - y; 
        }

        public int Carp(int x, int y)
        {
            return x * y;
        }

        public int Bol(int x, int y)
        {
            return x / y; 
        }
    }
}

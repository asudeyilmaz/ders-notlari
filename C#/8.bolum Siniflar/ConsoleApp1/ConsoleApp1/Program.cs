// See https://aka.ms/new-console-template for more information
using ConsoleApp1;

mesaj msj = new mesaj();
msj.metin();

Kisiler kisi = new Kisiler();
kisi.kisiListesi();
//*----------------------------------------

Personel yeniPersonel = new Personel();

yeniPersonel.name = "Asude";
yeniPersonel.soyad = "Yılmaz";
yeniPersonel.age = 25;
yeniPersonel.meslek = "Developer";

Console.WriteLine(yeniPersonel.name + "\n" + yeniPersonel.soyad);

//-----------------------------------------------

alistirma ben = new alistirma();
ben.getir();


//----------------------------

islem isl  = new islem();
int sonuc = isl.topla(5, 8);
Console.WriteLine(sonuc);






//*********************

islemlerAlistirma islm = new islemlerAlistirma();

int toplam = islm.topla(5, 8);
int cikarma = islm.Cikar(9, 4);
int bolum = islm.Bol(10, 2);
int carpim = islm.Carp(10, 11);
Console.WriteLine(carpim + bolum+cikarma+toplam);



//---------- yapıcı metod

Ogrenci ogr = new Ogrenci();
Console.Write("Ad - kulüp :");
string blg =Console.ReadLine();
Ogrenci2 ogr2 = new Ogrenci2(blg);


//---------- ödev
Console.Write("Ad:");
string name = Console.ReadLine();
Console.Write("Soyad: ");
string surname = Console.ReadLine();
Console.Write("Yaş:");
int age = Convert.ToInt32(Console.ReadLine());
Console.Write("Meslek:");
string job = Console.ReadLine();

Odev odv = new Odev(name, surname, age, job);

//-------------------------------

Kimlik kml = new Kimlik();
kml.AD = "Aynur";
kml.SOYAD = "Yıldız";

Console.WriteLine(kml.AD);
Console.WriteLine(kml.SOYAD);



Console.Read();
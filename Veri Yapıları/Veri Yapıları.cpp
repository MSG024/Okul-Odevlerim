//Adı Soyadı : Melike Saniye GÜÇLÜER
// Numara : 240827029 
// Okul  : Harran Üniversitesi
// Bölüm : Veri Bilimi ve Analitiği
// Ders  : Veri Yapıları ve Algoritmalar
// Konu : Sipariş Sistemi 

#include <iostream>
using namespace std;

// Kuyruk kapasitesini sabit olarak tanimliyoruz
const int kapasite = 10;

// Siparis yapisini olusturuyoruz
struct Siparis {
    char musteriAdi[20];  
    char urun[20];        
};

// Kuyrugu olusturuyoruz
Siparis kuyruk[kapasite];
int bas = 0;     
int son = -1;    
int boyut = 0;   

//SİPARİŞ EKLEME
void siparisEkle() {
    if (boyut == kapasite) {
        cout << "Kuyruk dolu, yeni siparis eklenemiyor." << endl;
        return;
    }

    // Son indeks ileriye tasinir 
    son = (son + 1) % kapasite;

    // Musteriden bilgiler alinir
    cout << "Musteri adi: ";
    cin >> kuyruk[son].musteriAdi;

    cout << "Siparis: ";
    cin >> kuyruk[son].urun;

    boyut++;  // Eleman sayisi artar
    cout << "Siparis alindi." << endl;
}

//SİPARİŞ HAZIRLAMA
void siparisHazirla() {
    if (boyut == 0) {
        cout << "Hazirlanacak siparis yok." << endl;
        return;
    }

    // Ilk siradaki siparis teslim edilir
    cout << kuyruk[bas].musteriAdi << " icin " << kuyruk[bas].urun << " siparisi hazirlandi ve teslim edildi." << endl;

    // Bas indeks ileriye tasinir 
    bas = (bas + 1) % kapasite;
    boyut--;  // Eleman sayisi azalir
}
//Mevcut Siparişleri Listeleme
void siparisleriListele() {
    if (boyut == 0) {
        cout << "Bekleyen siparis yok." << endl;
        return;
    }

    cout << "Bekleyen siparisler:" << endl;
    int indeks = bas;
    for (int i = 0; i < boyut; i++) {
        cout << kuyruk[indeks].musteriAdi << " - " << kuyruk[indeks].urun << endl;
        indeks = (indeks + 1) % kapasite;  
    }
}
//Toplam Bekleyen Sipariş Sayısı
void siparisSayisi() {
    cout << "Toplam bekleyen siparis sayisi: " << boyut << endl;
}

int main() {
    int secim;
    do {
        
        cout << "\n=== FAST FOOD SIPARIS SISTEMINE HOSGELDINIZ:) ===\n";
        cout << "1. Siparis Ekle\n";
        cout << "2. Siparisi Hazirla\n";
        cout << "3. Siparisleri Listele\n";
        cout << "4. Siparis Sayisi\n";
        cout << "5. Cikis\n";
        cout << "Seciminizi girin: ";
        cin >> secim;

        switch (secim) {
            case 1:
                siparisEkle();
                break;
            case 2:
                siparisHazirla();
                break;
            case 3:
                siparisleriListele();
                break;
            case 4:
                siparisSayisi();
                break;
            case 5:
            	//ÇIKIŞ
                cout << "IYI GUNLER:)" << endl;
                break;
            default:
                cout << "Gecersiz secim, tekrar deneyin." << endl;
        }
    } while (secim != 5);

    return 0;
}
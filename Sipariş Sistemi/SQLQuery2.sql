-- Kategorileri Ekle
INSERT INTO KATEGORILER (KategoriAdi) VALUES 
('Fast Food'), 
('Geleneksel Lezzetler'), 
('Pide ve Lahmacun'), 
('Tatlý ve Kahve');

-- Restoranlarý Ekle
INSERT INTO RESTORANLAR (KategoriID, RestoranAdi, Telefon, Puan) VALUES 
(1, 'Burger King', '0212-444-5566', 7.8),
(2, 'HD Ýskender', '0212-111-2233', 8.5),
(3, 'Pidem', '0212-333-4455', 8.2),
(1, 'Popeyes', '0212-666-7788', 7.5);

-- Ürünleri Ekle
INSERT INTO URUNLER (RestoranID, UrunAdi, Fiyat, Aciklama) VALUES 
(1, 'Whopper Menü', 260.00, 'Büyük boy patates ve kola ile'),
(1, 'Chicken Royale', 220.00, 'Orta boy menü'),
(2, 'Tek Ýskender', 340.00, 'Bol tereyaðlý'),
(2, 'Mercimek Çorbasý', 90.00, 'Süzme mercimek'),
(3, 'Kýymalý Pide', 210.00, 'Kaþarlý seçeneði mevcut'),
(3, 'Lahmacun', 110.00, 'Acýlý/Acýsýz');

-- Müþterileri Ekle
INSERT INTO MUSTERILER (AdSoyad, Telefon, Eposta) VALUES 
('Melike Güçlüer', '0555-111-2233', 'melike@gmail.com'),
('Ali Yýlmaz', '0542-333-4455', 'ali@gmail.com'),
('Ayþe Demir', '0532-555-6677', 'ayse@gmail.com');

-- Sipariþleri Oluþtur
-- (Melike, HD Ýskender'den sipariþ veriyor)
INSERT INTO SIPARISLER (MusteriID, RestoranID, Durum, ToplamTutar) 
VALUES (1, 2, 'Hazýrlanýyor', 430.00);

-- (Ali, Burger King'den sipariþ veriyor)
INSERT INTO SIPARISLER (MusteriID, RestoranID, Durum, ToplamTutar) 
VALUES (2, 1, 'Teslim Edildi', 260.00);

-- Sipariþ Detaylarýný Gir
-- Sipariþ 1 Detayý: 1 Ýskender + 1 Çorba
INSERT INTO SIPARIS_DETAY (SiparisID, UrunID, Adet) VALUES 
(1, 3, 1), 
(1, 4, 1);

-- Sipariþ 2 Detayý: 1 Whopper Menü
INSERT INTO SIPARIS_DETAY (SiparisID, UrunID, Adet) VALUES 
(2, 1, 1);
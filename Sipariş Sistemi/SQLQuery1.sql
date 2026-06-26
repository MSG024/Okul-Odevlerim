-- Veri Tabaný Oluþturma
CREATE DATABASE AVM_YemekSiparis;
GO
USE AVM_YemekSiparis;
GO

-- 1. Kategoriler Tablosu
CREATE TABLE KATEGORILER (
    KategoriID INT IDENTITY(1,1) PRIMARY KEY,
    KategoriAdi NVARCHAR(50) NOT NULL
);

-- 2. Restoranlar Tablosu
CREATE TABLE RESTORANLAR (
    RestoranID INT IDENTITY(1,1) PRIMARY KEY,
    KategoriID INT,
    RestoranAdi NVARCHAR(100) NOT NULL,
    Telefon NVARCHAR(15),
    Puan DECIMAL(2,1) DEFAULT 0,
    FOREIGN KEY (KategoriID) REFERENCES KATEGORILER(KategoriID)
);

-- 3. Ürünler (Menü) Tablosu
CREATE TABLE URUNLER (
    UrunID INT IDENTITY(1,1) PRIMARY KEY,
    RestoranID INT NOT NULL,
    UrunAdi NVARCHAR(100) NOT NULL,
    Fiyat DECIMAL(10, 2) NOT NULL,
    Aciklama NVARCHAR(255),
    FOREIGN KEY (RestoranID) REFERENCES RESTORANLAR(RestoranID)
);

-- 4. Müþteriler Tablosu
CREATE TABLE MUSTERILER (
    MusteriID INT IDENTITY(1,1) PRIMARY KEY,
    AdSoyad NVARCHAR(100) NOT NULL,
    Telefon NVARCHAR(15),
    Eposta NVARCHAR(100)
);

-- 5. Sipariþler Tablosu (Ana Tablo)
CREATE TABLE SIPARISLER (
    SiparisID INT IDENTITY(1,1) PRIMARY KEY,
    MusteriID INT NOT NULL,
    RestoranID INT NOT NULL,
    Tarih DATETIME DEFAULT GETDATE(),
    Durum NVARCHAR(20) DEFAULT 'Hazýrlanýyor',
    ToplamTutar DECIMAL(10, 2),
    FOREIGN KEY (MusteriID) REFERENCES MUSTERILER(MusteriID),
    FOREIGN KEY (RestoranID) REFERENCES RESTORANLAR(RestoranID)
);

-- 6. Sipariþ Detay Tablosu (Ara Tablo)
CREATE TABLE SIPARIS_DETAY (
    DetayID INT IDENTITY(1,1) PRIMARY KEY,
    SiparisID INT NOT NULL,
    UrunID INT NOT NULL,
    Adet INT DEFAULT 1,
    FOREIGN KEY (SiparisID) REFERENCES SIPARISLER(SiparisID),
    FOREIGN KEY (UrunID) REFERENCES URUNLER(UrunID)
);
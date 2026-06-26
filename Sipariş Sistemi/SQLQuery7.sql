SELECT 
    M.AdSoyad,
    R.RestoranAdi,
    U.UrunAdi
FROM SIPARIS_DETAY SD
JOIN SIPARISLER S ON SD.SiparisID = S.SiparisID
JOIN MUSTERILER M ON S.MusteriID = M.MusteriID
JOIN URUNLER U ON SD.UrunID = U.UrunID
JOIN RESTORANLAR R ON U.RestoranID = R.RestoranID
JOIN KATEGORILER K ON R.KategoriID = K.KategoriID
WHERE K.KategoriAdi = 'Fast Food';
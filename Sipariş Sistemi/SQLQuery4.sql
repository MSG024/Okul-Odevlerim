SELECT 
    M.AdSoyad, 
    R.RestoranAdi, 
    S.Tarih, 
    S.Durum, 
    S.ToplamTutar
FROM SIPARISLER S
JOIN MUSTERILER M ON S.MusteriID = M.MusteriID
JOIN RESTORANLAR R ON S.RestoranID = R.RestoranID;
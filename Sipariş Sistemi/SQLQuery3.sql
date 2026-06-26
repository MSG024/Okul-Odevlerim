SELECT UrunAdi, Fiyat, Aciklama
FROM URUNLER
WHERE Fiyat < 250
ORDER BY Fiyat ASC;
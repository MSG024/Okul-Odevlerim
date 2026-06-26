SELECT 
    R.RestoranAdi, 
    COUNT(U.UrunID) AS MenudekiUrunSayisi
FROM RESTORANLAR R
JOIN URUNLER U ON R.RestoranID = U.RestoranID
GROUP BY R.RestoranAdi;
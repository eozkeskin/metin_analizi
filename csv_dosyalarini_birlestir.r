# Analiz için indirilen CSV dosyalarını birleştir.

dosya_adlari <- list.files(path = "Dosyaların_Bulunduğu_Yol",full.names=TRUE)

Hepsi <- lapply(dosya_adlari,function(i){
  read.csv(i, header=FALSE,fill = T)
})

data_frame <- do.call(rbind.data.frame, Hepsi)

# Kaydedelim.

write.csv(df,file = "Sonuç_Dosyasının_Adı", row.names=FALSE)

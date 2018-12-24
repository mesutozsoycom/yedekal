#!/bin/bash
#Ne işe Yarar = Google Drive için Dosya Yedekleyici
#20-12-2018
#Mesut Ozsoy
#Version 1.0
#Sistemde Rclone yüklü olmalıdır.
#Baslangıc

ZAMAN=`date +%b-%d-%y%s`          
DOSYAADI=backup-$TIME.tar.gz     
KAYNAKKLASOR=/home/resimlerim                   
HEDEFKLASOR=/home/yedeklerim                 
SNF=/home/verisnap/verisnap.snar           
DIGERYEDEK=home/digeryedek

tar -cvf $HEDEFKLASOR/$DOSYAADI -g $SNF $KAYNAKKLASOR 

cp $HEDEFKLASOR/$DOSYAADI $DIGERYEDEK					 #alınan yedegi ikinci hddye kopyalar

rclone copy $HEDEFKLASOR/$DOSYAADI remote:BULUT 			#alınan yedegi googledrive buluta yollar

#SON

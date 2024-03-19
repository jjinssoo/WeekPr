print("15년도부터 22년까지 남녀 육아휴직자 차의 최대, 최소 연도 분석!")
year<-seq(2015,2022,1)
year<-paste(year,"년",sep='')
f<-c(8220,11965,18160,25062,32051,38813,42197,54240)
m<-c(128340,128438,123878,128679,131205,133146,132913,145736)
names(f)<-year
names(m)<-year
dif<-m-f
dif<-sort(dif,decreasing = TRUE)
cat("최대 차이 연도:",names(dif[1]),"최소 차이 연도:",names(dif[8]))

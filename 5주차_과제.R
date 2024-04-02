print("2021 - 2022 플랫폼 별 게임 시장 규모를 통해 순위와 비율의 변화 분석")
country <- c("미국","캐나다","영국","독일","프랑스","이탈리아","일본","중국","한국","대만")
platform <-c("콘솔","모바일","PC")
years<-c("2021","2022")

print("2021년 플랫폼별 해외 매출")
suchi2021 <- matrix(c(
  19729, 16914, 6141,
  1664, 1870, 329,
  6155, 3208, 1634,
  2739, 4413, 811,
  4355, 1814, 1363,
  2146, 2126, 254,
  5196, 11839, 369,
  678, 28233, 15631,
  919, 10615, 4926,
  281, 1586, 839),ncol=3,byrow=TRUE)

rownames(suchi2021)<-country
colnames(suchi2021)<-platform

suchi2021

print("2022년 플랫폼별 해외 매출")

con<- c( 19164, 1807, 6316, 2685, 4285, 2103, 4759, 1696, 893, 286)
pc<- c(5710, 299, 1663, 825, 1398, 256, 289, 15650, 4632, 852)
mob<-c(17620, 1760, 2846, 3946, 1602, 1916, 9877, 24429, 10430, 1688)
suchi2022 <- data.frame(con,pc,mob)
rownames(suchi2022)<-country

suchi2022

#lastsuchi<-suchi2022 - suchi2021
#lastsuchi

h1<-sort(suchi2021[,"콘솔"]/sum(suchi2021[,"콘솔"]),decreasing = TRUE)
h2<-sort(suchi2021[,"PC"]/sum(suchi2021[,"PC"]),decreasing=TRUE)
h3<-sort(suchi2021[,"모바일"]/sum(suchi2021[,"모바일"]),decreasing = TRUE)


x<-suchi2022[order(suchi2022$con,decreasing=TRUE),]
t1<-cbind(x['con']/colSums(x['con']))
x<-suchi2022[order(suchi2022$pc,decreasing=TRUE),]
t2<-cbind(x['pc']/colSums(x['pc']))
x<-suchi2022[order(suchi2022$mob,decreasing=TRUE),]
t3<-cbind(x['mob']/colSums(x['mob']))

print("2021년 콘솔 피시 모바일의 top 3 국가")
print("console")
head(h1,3)
print("PC")
head(h2,3)
print("mobile")
head(h3,3)

print("2022년 콘솔 피시 모바일의 top 3 국가")
head(t1,3)
head(t2,3)
head(t3,3)

print("2021년 2022년 플랫폼 별 top3를 분석했을 때 가장 유의미한 변화는 모바일 시장에서 한국이 3위로올라온 것이다.")
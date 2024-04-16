#2021~2022년 '콘솔 장르별 남녀 점유율' 자료를 토대로, 여성 게이머를 공략하는 콘솔 게임 장르는 무엇일지 예측
library(xlsx)
cons2021<-read.xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\2021.xlsx", header=T, sheetIndex=1)

cons2022<-read.xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\2022.xlsx", header=T, sheetIndex=1)

filtFem <- function(x){
  for(i in 1:nrow(x)){
    for(j in 1:ncol(x)){
      if(x[i, j] == '여성'){
        return(x[i, ])
      }
    }
  }
}


filtFem(cons2021)
fem_data21 <- filtFem(cons2021)[-1] # '여성' 행에서 숫자 값만 가져옴
max_genre21 <- names(fem_data21)[which.max(as.numeric(fem_data21))] # 최대값을 가지는 열의 이름 확인
#print(max_genre21)

filtFem(cons2022)
fem_data22 <- filtFem(cons2022)[-1] # '여성' 행에서 숫자 값만 가져옴
max_genre22 <- names(fem_data22)[which.max(as.numeric(fem_data22))] # 최대값을 가지는 열의 이름 확인
#print(max_genre22)

#(idea)
#apply(fem22[-1],1,max)
#which.max(fem21["여성",])


cat("2021년도 콘솔에서의 여성 인기 게임 장르: ",max_genre21)
cat("2022년도 콘솔에서의 여성 인기 게임 장르: ",max_genre22)

print("21년에서 22년도로 흐름에 따라, 콘솔에서의 여성 인기 게임 장르가 '액션'에서 '시뮬레이션'으로 변화함.")
print("그에 따라, 22년도에 어떤 시뮬레이션 시장의 변화가 있었는지 다음에 알아보고자 함.")
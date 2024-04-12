library('svDialogs')
wt <- read.table("C:\Users\user\OneDrive - SangMyung University\바탕 화면\근로시간.txt",header=T,)
con <- read.table("C:\Users\user\OneDrive - SangMyung University\바탕 화면\콘솔판매량.txt",header=T,)

consub<-con[1,]-con[2,]
wtsub<-wt[1,]-wt[2,]

print("2021 2022 콘솔 판매량 격차")
print(consub)
print("2021 2022 근로시간 격차")
print(wtsub)

print("결론 : 3개국 모두 근로시간이 줄어듬에 따라 콘솔 게임을 하는 시간조차 늘어났다.")

input <- dlgInput("알고싶은 나라는?")$res


if(input %in% names(consub) && input %in% names(wtsub)) {
  cat(input, "의 근로시간이", wtsub[[input]], "만큼 변했고, 콘솔 판매량이", consub[[input]], "만큼 변했습니다.\n")
} else {
  cat("입력한 나라는 데이터에 존재하지 않습니다.\n")
}
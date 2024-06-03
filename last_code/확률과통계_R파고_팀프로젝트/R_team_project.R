#setwd('C:\\Users\\XXXX\\Desktop\\학교\\확통') XXXX 경로 바꾸기!
library('readxl')
library(dplyr) #온갖 함수에 쓰이는 %in%나 %>%같은 것 쓰기 위해서
library(colorspace)
options(scipen=999) #이거는 숫자가 잘 안보여서 써 줬음
#이터널 리턴
ER <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = '이터널 리턴')
#스타듀밸리
stardew_valley <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = 'stardrew valley')
#하데스data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAbElEQVR4Xs2RQQrAMAgEfZgf7W9LAguybljJpR3wEse5JOL3ZObDb4x1loDhHbBOFU6i2Ddnw2KNiXcdAXygJlwE8OFVBHDgKrLgSInN4WMe9iXiqIVsTMjH7z/GhNTEibOxQswcYIWYOR/zAjBJfiXh3jZ6AAAAAElFTkSuQmCC
hades <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = 'hades')
#스컬
skull <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = 'skul')
#돈스타브투게더
dont_starve_together <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "DON'T STARVE TOGETHER")
#아이작
the_binding_of_issac <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "The Binding of Isaac")
#산나비 데이터 개수 24
sannabi <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "sanabi")
#좀보이드
project_zomboid <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "project Zomboid")
#물불춤
a_dance_of_fire_and_ice <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "A Dance of Fire and Ice")
#stray 데이터 개수 23
stray <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "stray")
#오버쿸드
overcooked <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "overcoocked2")
#테라리아
terria <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "terraria")
#슬더슬
slay_the_spire <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "slay the spire")
#아우터 와일드
outer_wild <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "outer wild")
#익스케이프 시뮬레이터
escape_simulator <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Escape Simulator")
#리스크 오브 레인
risk_of_rain2 <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "risk of rain2")
#뱀서 자료개수 29개
vampire_survivors <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "vampire surivors")
#푸멜 파티
pummel_party <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Pummel Party")
#건파이어 리본
gunfire_reborn <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Gunfire Reborn")
#라스트 이포
last_epoch <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Last Epoch")
#포션 크래프트
potion_craft <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Potion Craft")
#다키스트 던전
darkest_dungeon <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Darkest Dungeon")
#휴먼 폴 플랫
human_fall_flat<- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Human Fall Flat")
#뮤즈 대쉬
muse_dash <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Muse Dash")
#구즈구즈 덕
goose_goose_duck <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Goose Goose Duck")
#피코 파크
pico_park <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "PICO PARK")
#리턴 오브 오브라 딘
return_of_obra_dawn <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "RETURN OF THE OBRA DINN")
#할로우 나이트
hallow_knight <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Hollow Knight")
#바바 이즈 유
baba_is_you <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Baba Is You")
#리프트오프
liftoff <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "liftoff")
#라이브러리 오브 루이이나
library_of_rumina <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Library Of Ruina")
#병맛 전쟁 시뮬레이터
totally_accurate_battle_simulator <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Totally Accurate Battle Simulat")
#로보토미 코퍼레이션
lobotomy_corporation <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Lobotomy Corporation")
#파피 플레이타임
poppy_playtime <- read_xlsx("C:\\Users\\user\\OneDrive - SangMyung University\\바탕 화면\\last_code\\확률과통계_R파고_팀프로젝트\\gameChart.xlsx",range = cell_cols(2:7),sheet = "Poppy Playtime")

#4가지 게임 선정 예나 선정이 딸이에요.. 주르륵
select_games <- list(ER,the_binding_of_issac,hades,stardew_valley)
#이름 벡터
na <- c("이터널 리턴", "The Binding of Issac","Hades","Stardew Valley")
#각각의 게임에 색상 코드
four_color <- c('#00A0E2', '#004EA1', '#8AC452', '#00AA7D')

#플레이어수 피크 그래프
plot_create_0 <- function(game, main_text = '',line_color = '#55CBCD' ,label_gap = 4 ) {
  plot(game$date, game$peekuser,type='l' ,main = main_text, xlab = "", ylab = "유저의 피크 수", axes = FALSE, col=line_color)
  
  axis(1, at = game$date, labels = format(game$date, "%Y-%m-%d"), las = 2, cex.axis = .7) # x축
  axis(2) # y축
  box()
}

par(mfrow=c(2,2))
for(i in 1:4) {
  plot_create_0(select_games[[i]],na[i],four_color[i])
}

#플레이어 증가량을 양수만 뽑아서
#다시 해당 날짜의 자료들만 있는 데이터 프레임으로 리턴해줌
#gain도 플레이어 증가량으로 바꿔준다.
usergain <- function(game) {
  #날짜 역순으로 정렬
  game <- game[order(game$date, decreasing = TRUE),]
  
  #증가량 계산하기
  game$gain <- c(NA, diff(game$peekuser))
  
  #증가량이 양수인 경우만 추출
  gain_positive <- game[game$gain > 0, ]
  
  return(gain_positive)
}

#박스플롯 그리기
for(i in 1:4)
{
  boxplot(usergain(select_games[[i]])$gain, main = na[i], col=four_color[i], ylab = "증가량 (%)")
}

#증가량의 그래프
plot_create_2 <- function(game, main_text = '', line_color = '#55CBCD' ,label_gap = 4 ) {
  yn <- game$gain
  xn <- game$date[which(game$gain %in% yn)]
  
  plot(xn, yn, main = main_text,col=line_color ,xlab = "", ylab = "유저수 증가량", axes = FALSE)
  
  axis(1, at = xn, labels = format(xn, "%Y-%m-%d"), cex.axis = .7) # x축
  axis(2) # y축
  box()
}

par(mfrow=c(2,2))
for(i in 1:4) {
  plot_create_2(usergain(select_games[[i]]),na[i],four_color[i])
}


#플레이어 증가량의 이상치와 시청자수의 이상치의 날짜가 동일하면
#해당 날짜들을 리턴해준다.
compareOutliersDates <- function(game) {
  # usergain 함수를 사용하여 증가량 데이터 업데이트
  gain_positive <- usergain(game)
  plusgain_outliers <- boxplot.stats(game$twich)$out
  plusgain_outliers <- plusgain_outliers[plusgain_outliers > 0]
  
  gain_dates <- gain_positive$date
  plusgain_dates <- game$date[which(game$twich %in% plusgain_outliers)]
  #교집합 함수로 두 데이터의 날짜가 겹치는 것만
  common_dates <- intersect(gain_dates, plusgain_dates)
  
  common_dates <- as.POSIXct(common_dates)
  
  return(common_dates)
}

#sale이 1인 날짜들만 증가량 양수인 경우만 비교해서 넣어준다.
compareSale <- function(game) {
  # usergain 함수를 사용하여 증가량 데이터 업데이트
  gain_positive <- usergain(game)
  sale_date <- game$date[game$sale > 0]
  
  gain_dates <- gain_positive$date
  
  common_dates <- intersect(gain_dates, sale_date)
  
  common_dates <- as.POSIXct(common_dates)
  
  return(common_dates)
}

# sale과 마찬가지로 update가 1인 경우만.
compareUpdate <- function(game) {
  # usergain 함수를 사용하여 증가량 데이터 업데이트
  gain_positive <- usergain(game)
  update_date <- game$date[game$update > 0]
  
  gain_dates <- gain_positive$date
  
  common_dates <- intersect(gain_dates, update_date)
  
  common_dates <- as.POSIXct(common_dates)
  
  return(common_dates)
}

#유저의 피크 수 위에 이벤트 점이 찍히게 만들었음.
#points를 이용해서 이벤트가 겹치는 경우와 안 겹치는 경우 총 6개로 분리

plot_create_3 <- function(game, main_text = '',line_color = '#55CBCD' ,label_gap = 4 ) {
  plot(game$date, game$peekuser,type='l' ,main = main_text, xlab = "", ylab = "유저의 피크 수", axes = FALSE, col=line_color)
  
  axis(1, at = game$date, labels = format(game$date, "%Y-%m-%d"), las = 2, cex.axis = .7) # x축
  axis(2) # y축
  box()
  # 각 날짜별로 조건에 따라 다른 점 그리기
  for (i in 1:length(game$date)) {
    date <- game$date[i]
    peekuser_value <- game$peekuser[i]
    is_outliers_dates <- date %in% compareOutliersDates(game)
    is_sale_dates <- date %in% compareSale(game)
    is_update_dates <- date %in% compareUpdate(game)
    
    if (is_outliers_dates & is_sale_dates & is_update_dates) {
      points(date, peekuser_value, col = "black", pch = 8) # 모두 겹침
    } else if (is_outliers_dates & is_sale_dates) {
      points(date, peekuser_value, col = "blue", pch = 9) # OutliersDates와 Sale 겹침
    } else if (is_outliers_dates & is_update_dates) {
      points(date, peekuser_value, col = "purple", pch = 10) # OutliersDates와 Update 겹침
    } else if (is_sale_dates & is_update_dates) {
      points(date, peekuser_value, col = "green", pch = 11) # Sale과 Update 겹침
    } else if (is_outliers_dates) {
      points(date, peekuser_value, col = "skyblue", pch = 17) # OutliersDates만 해당
    } else if (is_sale_dates) {
      points(date, peekuser_value, col = "lightgreen", pch = 18) # Sale만 해당
    } else if (is_update_dates) {
      points(date, peekuser_value, col = "magenta", pch = 19) # Update만 해당
    }
  }
  # 범례 추가 -> 범례가 그래프를 가리는 관계로 일단은 제거
  # legend(x="topright", legend = c("세 요소 모두 영향", "세일 + 시청자수", "시청자수 + 업데이트", "세일 + 업데이트", "시청자수", "세일", "업데이트"),
  #        col = c("black", "blue", "purple", "green", "skyblue", "lightgreen", "magenta"),
  #        pch = c(8, 9, 10, 11, 17, 18, 19),  bty = "o", box.lwd = 1, box.col = "black", x.intersp = 0.5, y.intersp = 0.7)
}

par(mfrow=c(2,2))
for(i in 1:4) {
  plot_create_3(select_games[[i]],na[i],four_color[i])
}

#이벤트별 영향을 파이 차트로 보여주는 함수
plot_event_influences <- function(game, main_text) {
  
  outliers_dates <- compareOutliersDates(game)
  sale_dates <- compareSale(game)
  update_dates <- compareUpdate(game)
  
  event_counts <- c(
    Outliers = length(outliers_dates),
    Sale = length(sale_dates),
    Update = length(update_dates))
  
  e_name<-c("시청자 수", "세일", "업데이트")
  
  total_events <- sum(event_counts)
  
  event_percent <- round(event_counts / total_events * 100, 1)
  #라벨
  labels <- paste(e_name, ": ", event_percent, "%", sep = "")
  
  #파이차트
  pie(event_counts, labels = labels, main = main_text, col = c("#00A0E2", "#00AA7D", "#004EA1"))
}

par(mfrow=c(2,2))
for(i in 1:4)
{
  plot_event_influences(select_games[[i]],na[i])
}

#전체 게임에서 영향을 각각 얼마나 끼쳤는가에 대한 코드
everything <- list(ER,stardew_valley,hades,skull,dont_starve_together,sannabi,project_zomboid,a_dance_of_fire_and_ice,stray,overcooked,terria,slay_the_spire,outer_wild,escape_simulator,risk_of_rain2,
                   vampire_survivors,pummel_party,gunfire_reborn,last_epoch,potion_craft,darkest_dungeon,human_fall_flat,muse_dash,goose_goose_duck,pico_park,return_of_obra_dawn,
                   hallow_knight,baba_is_you,liftoff,library_of_rumina,totally_accurate_battle_simulator,lobotomy_corporation,poppy_playtime)

# 전체 게임 데이터에서 이벤트별 영향을 파이 차트로 나타내는 함수
plot_overall_event_influences <- function(games, main_text) {
  all_outliers_dates <- c()
  all_sale_dates <- c()
  all_update_dates <- c()
  
  #전체 게임을 받아야 해서 리스트로 받아옴.
  for(game in games) {
    outliers_dates <- compareOutliersDates(game)
    sale_dates <- compareSale(game)
    update_dates <- compareUpdate(game)
    
    all_outliers_dates <- c(all_outliers_dates, outliers_dates)
    all_sale_dates <- c(all_sale_dates, sale_dates)
    all_update_dates <- c(all_update_dates, update_dates)
  }
  
  event_counts <- c(
    Outliers = length(all_outliers_dates),
    Sale = length(all_sale_dates),
    Update = length(all_update_dates)
  )
  
  e_name <- c("시청자 수", "세일", "업데이트")
  
  total_events <- sum(event_counts)
  
  event_percent <- round(event_counts / total_events * 100, 1)
  labels <- paste(e_name, ": ", event_percent, "%", sep = "")
  
  pie(event_counts, labels = labels, main = main_text, col = c("#00A0E2", "#00AA7D", "#004EA1"))
}

# everything 리스트의 전체 게임 데이터로 파이 차트 그리기
par(mfrow=c(1,1))
plot_overall_event_influences(everything, "전체 게임 데이터에서 이벤트별 영향")

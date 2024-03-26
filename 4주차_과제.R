print("2024년, OECD 국가 GDP와 행복지수를 바탕으로, GDP에 따라 국가의 행복이 정해지는지에 대한 분석")

gdp <- c(27966553, 18560013, 1784805, 1904336, 4286187, 316308)
happy <- c(6.7, 5.9, 6.05, 5.7, 6.06, 7.7)
country.name <- c("미국", "중국", "한국", "러시아", "일본", "핀란드")
conti <- c('아메리카', '아시아', '아시아', '아시아', '아시아', '유럽')

#펙터 사용
names(gdp) <- country.name
names(happy) <- country.name
conti.factor <- factor(conti)

print(levels <- conti.factor)

#리스트 사용
country.list <- list(country.name, gdp, happy, conti)
country.list

#리스트에서 원소 추출
names(country.list$c.gdp) <- country.list$country
names(country.list$c.happy) <- country.list$country

# GDP와 Happy를 기준으로 정렬
gdp.sort <- sort(gdp, decreasing = FALSE)
happy.sort <- happy[order(gdp)]

# GDP와 Happy의 상대적인 높낮이 계산
gdp.lowhigh <- ifelse(gdp.sort > mean(gdp.sort), TRUE, FALSE)
happy.lowhigh <- ifelse(happy.sort > mean(happy.sort), TRUE, FALSE)

print(difference <- gdp.lowhigh - happy.lowhigh)
print("나라별 GDP에 따른 행복지수 차이")
print("-1 == GDP 대비 행복지수 높음 == 완전 행복")
print(" 0 == GDP 대비 행복지수 적정 == 비례함")
print(" 1 == GDP 대비 행복지수 낮음 == 완전 불행")
print("2023년 대륙별 콘솔 점유율 동향을 파악하고, 그간의 시장 규모 자료를 통해 예측의 근거를 알아보았습니다.")

year.2023 <- c(1.9, 15.2, 41.1, 41.8)
names(year.2023) <- c("남미", "아시아", "유럽", "북미")

create_labels <- function(data) {
  percentages <- round(data / sum(data) * 100)
  labels <- paste(names(data), "\n", percentages, "%", sep = "")
  return(labels)
}

# 2023년 파이 차트
labels.2023 <- create_labels(year.2023)
pie(year.2023, labels = labels.2023, main = "2023년 콘솔 시장 분포")


print("파이 차트를 통해, 북미가 가장 큰 점유율로 예측되는 이유를 알아 보기 위해 과거 자료를 파악해보았습니다.")


df <- data.frame(
  'NorthAm' = c(15858, 19772, 23387, 25409),
  'Europe' = c(24816, 25866, 26847, 27658),
  'Asia' = c(6964, 9013, 8686, 9643),
  'SouthAm' = c(1081, 1175, 1225, 1263),
  row.names = c('2019', '2020', '2021', '2022')
)

# 전치
df <- t(df)

rownames(df) <- c('NorthAm', 'Europe', 'Asia', 'SouthAm')
colnames(df) <- c('2019', '2020', '2021', '2022')

continent_colors <- c("blue", "green", "red", "orange")

par(mfrow=c(1,1),mar=c(5,5,5,7))
# 막대 그래프(중첩, 가로로)
barplot(df,main="대륙 별 콘솔게임 시장 규모" ,beside = FALSE, legend.text = TRUE, args.legend = list(x = "topright", inset = c(-0.23, 0.3)), col = continent_colors, horiz = TRUE,xlab = '(백만 단위)',ylab='년도')

# x축 단위(백만 달러)
axis(1, 30000, 60000)


print("막대 그래프를 통해, 북미의 콘솔 시장은 19년부터 22년까지 꾸준한 성장세를 보이고 있다는 걸 알 수 있습니다.")
print("2022년 시장 규모를 막대 그래프로 보았을 때, 이 성장세라면 북미가 유럽을 뛰어넘을 것이라 예측됩니다.")

print("막대 그래프를 통한 자료가, 곧 2023년 대륙별 콘솔 점유율 동향의 근거로써 의미를 가질 수 있다는 결론을 냈습니다.")
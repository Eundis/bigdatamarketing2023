"hello world"

a<- 1
a
'a'
x1 <-"ubion"
x2 <- 25
x3 <- 1

str(x1) #"str"은 "문자열(string)"의 줄임말로, 텍스트를 나타내는 데이터 형식을 의미
str(x2)
str(x3)
x3 <- as.factor(x3) #집단별변수 숫자로 인식하지 않게 하기 위함
str(x3)
x4 <- 12.25
str(x4)
x4 <- as.integer(x4) #실수에서 정수로 바꾸는 것
str(x4)

data <-iris
str(data) #data.frame 엑셀형태로 불러올 수 있는 정형 프레임
data$Sepal.Length <-as.integer(data$Sepal.Length) #Sepal.Length 정수로 바꾸려면??
str(data)
summary(data)
#data$Species <-as.integer(data$Species)
str(data)
data$Species <-as.factor(data$Species)
str(data)


#setosa <- data[data$Species == "setosa",] 이렇게도 가능
setosa <- data[data$Species == "setosa",]  #"setosa"대신 1로지정 가능
str(setosa)
versicolor <- data[data$Species =="versicolor",]  
str(versicolor)
virginica <- data[data$Species == "virginica",]
str(virginica)
mean(setosa$Sepal.Length)
mean(versicolor$Sepal.Length)
mean(virginica$Sepal.Length)

summary(iris)

data <- iris
#data2 <- data 데이터 손실이 있을 수 있을 때는 새로 불러오기




getwd()
setwd("C:/R PROJECT") #저장하는방법
getwd() #working directory = wd
write.csv(iris,"iris.csv")



install.packages("psych" , binary = T, dependencies = T)
library(psych) #패키지를 로드 하는 함수
describe(data) #summary보다 더 자세히 나온다(기술통계가 보임)


describe(setosa)
describe(virginica)
describe(versicolor)
plot(data$Sepal.Length) #plot 그림으로 보여줌
plot(data)

help(iris) 



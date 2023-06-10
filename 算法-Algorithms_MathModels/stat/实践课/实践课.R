names<-c("刘文涛","王宇翔","田思雨","徐丽娜","丁文彬")
stat<-c(68,85,74,88,63)
math<-c(85,91,74,100,82)
econ<-c(84,63,61,49,89)
table1_1<-data.frame(学生姓名=names,统计学=stat,数学=math,经济学=econ)
table1_1


library(reshape2)
tab.long<-melt(table1_1,id.vars="学生姓名",variable.name="课程",value.name="分数")
tab.long

mat<-as.matrix(table1_1[,2:4])
rownames(mat)=table1_1[,1]
mat

example1_1<-read.csv("C:/Users/K49/Desktop/2022_2023_2/stat/example/chap01/example1_1.csv",fileEncoding="GBK")
attach(example1_1)
mytable1<-table(态度,社区);mytable1

mytable2<-ftable(example1_1,row.vars = c("性别","态度"),col.vars = "社区")
mytable2
ftable(addmargins(table(example1_1$性别,example1_1$态度,example1_1$社区)))
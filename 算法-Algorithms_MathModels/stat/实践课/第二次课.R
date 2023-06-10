#独立性检验
x = c(52,64,24,60,59,52,50,65,74)
M = matrix(x,nr=3,nc=3,byrow = TRUE,dimnames = list(c("甲","乙","丙"),c("一级","二级","三级")))
chisq.test(M)

#方差分析
example10_1 = read.csv("C:/Users/K49/Desktop/2022_2023_2/stat/example/chap08/example10_1.csv",fileEncoding="GBK")
example10_2 = melt(example10_1,variable.name = "行业",value.name = "投诉次数")
 
 #拟合单因子方差分析模型并输出结果
model1_1w = aov(投诉次数~行业,data = example10_2)
summary(model1_1w)

 #方差分析模型参数估计
model1_1w$coefficients

 #输出基本结果
library(agricolae)
model1_1w = aov(投诉次数~行业 ,data = example10_2)
LSD = LSD.test(model1_1w,"行业");LSD

 #输出更多信息
library(DescTools)
PostHocTest(model1_1w,method = "lsd")


#回归
example9_1 = read.csv("C:/Users/K49/Desktop/2022_2023_2/stat/example/chap09/example9_1.csv",fileEncoding="GBK")
model = lm(不良贷款 ~ 各项贷款余额,data = example9_1)
summary(model)

 #计算回归系数的置信区间
confint(model,level=0.95)

 #输出方差分析表
anova(model)



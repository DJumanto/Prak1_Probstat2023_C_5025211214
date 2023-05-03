# Nomor 5
# A. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan
# 6 derajat kebebasan?
df <- 6
q <- -2.34
prob <- pt(q,df)
cat("Probabilitas 6 derajat kebebasan dan x < -2.34: ", prob)

# B. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6
# derajat kebebasan?
df <- 1.34
probGreaterThan_134 <- pt(q, df, lower.tail = FALSE)
cat("Probabilitas 6 derajat kebebasan dan x > 1.34: ", probGreaterThan_134)

# C. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar 
# dari 1,23 dengan 3 derajat kebebasan?
df <- 3
probAround <- (pt(-1.23, df) + (pt(1.23, df, lower.tail = FALSE)))
print(probAround)

# D. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94
# dan 0,94 dengan 14 derajat kebebasan?
df <- 14
probAround_094 <- (pt(0.94, df) - pt(-0.94, df))
print(probAround_094)

# E. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333
# satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?
df <- 5
t_score <- qt(0.0333, df)
print(t_score)

# F. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125
# satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?
df <- 25
t_score <- qt(1 - 0.125, df, lower.tail=FALSE)
print(t_score)

# G. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75
# satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari
# nilai t-score tersebut?
x <- 0.75 + ((1-0.75)/2)
df <- 11
t_score <- qt(x, df=df, lower.tail=TRUE)
print(t_score)

# H. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333
# satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan
# negatif dari nilai t-score tersebut?
x <- (1 - (0.0333/2))
df <- 23
t_score <- qt(x, df=23)
cat("t-score: ", t_score)
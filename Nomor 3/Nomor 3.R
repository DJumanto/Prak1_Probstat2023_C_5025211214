# Nomor 3
# A. Fungsi probabilitas dari distribusi Chi-Square.
x <- 3
v <- 10
dchisq(x, v)

# B. Histogram dari distribusi Chi-Square dengan 500 data acak.
n <- 500
hist(rchisq(n,v),main="Histogram Distribusi Chi-Square", xlab="X", ylab="V")

# C. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.
μ <- v
variant <- 2 * v
cat("μ: ", μ, "; Varian: ", variant)

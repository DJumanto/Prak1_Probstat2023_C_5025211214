# Nomor 4
# A. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), 
# hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. 
# Petunjuk (gunakan fungsi plot()).
n <- 100
mean <- 45
sd <- 5

gen <- rnorm(n, mean, sd)
cat("Data: ", gen)
summary(gen)

p <- pnorm(runif(1, mean, max(gen)), mean, sd) - pnorm(runif(1, min(gen), mean), mean, sd)
print(p)
plot(gen)

# B. Gambarkan histogram dari distribusi Normal dengan breaks 50
breaks <- 50
hist(gen, breaks, main = "Histogram Distribusi Normal")

# C. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.
set.seed(123)
varian <- (sd(gen)) ^ 2
print(varian)

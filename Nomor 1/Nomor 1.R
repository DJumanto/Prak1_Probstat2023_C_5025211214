# Nomor 1
# A. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan
#    parameter yang sesuai.
n <- 10
p <- 0.488
x <- 0:n
distb <- dbinom(x, n, p)
print(distb)
plot(x, distb, type = "l", ylim = c(0, max(distb)), xlab = "Jumlah bayi laki-laki", ylab = "Probabilitas", main = "Distribusi Binomial")

# B. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin lakilaki?
probTigaLakiLaki <- dbinom(3, n, p)
print(probTigaLakiLaki)

# C. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin
# laki-laki?
probKurangDuaLakiLaki <- pbinom(2, n, p)
print(probKurangDuaLakiLaki)

# D. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin
# laki-laki?
probTigaAtauLebihLakiLaki <- 1 - probKurangDuaLakiLaki
print(probTigaAtauLebihLakiLaki)

# E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
harapan <- p * n
simpanganBaku <- sqrt((1-p) * harapan)
cat("Harapan: ",harapan," Simpangan Baku:", simpanganBaku)

# F. Gambarkan histogram pendistribusian banyak bayi laki-laki.
hist(rbinom(100, n, p), main = "Histogram Distribusi Bayi Laki-laki", xlab = "Banyak Bayi Laki-Laki", ylab = "Frekuensi")

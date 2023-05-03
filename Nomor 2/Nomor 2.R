# Nomor 2
# A. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan
# distribusi dengan parameter yang sesuai.
lambd <- 1.8
x <- 0:15
distb <- dpois(x,lambd)
print(distb)
plot(type="l", distb, main="Distribusi Kematian Kanker Tulang", xlab="Jumlah Kematian", ylab="Probabilitas")

# B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja
# pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas
# berdasarkan distribusi yang telah dipilih.
probs <- dpois(4,lambd)
cat("Probabilitas: ", probs)

# C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
probs <- ppois(4, lambd)
cat("Peluang Paling Banyak 4 Kematian Akibat Kangker Tulang: ", probs)

# D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?
probs <- 1-(probs)
cat("Peluang Kematian Lebih Dari 4 Akibat Kanker Tulang: ", probs)

# E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar
# deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

harapan <- lambd
standardDeviasi <- sqrt(harapan)
cat("Harapan: ", harapan, "; Standard Deviasi: ", standardDeviasi)

# F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker
# tulang untuk pekerja pabrik ban.
n <- 10
hist(rpois(n, lambd),ylab="Frekuensi", main="Histogram Distribusi Kematian Akibat Kanker Tulang")

# G. Gunakan simulasi untuk memeriksa hasil sebelumnya.
set.seed(123321)
res <- rpois(n,lambd)
print(res)


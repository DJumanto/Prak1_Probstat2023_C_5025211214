# Prak1_Probstat2023_C_5025211214
Repository Praktikum Modul 1 Probabilitas dan Statistik

## Nomor 1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
maka:

### A. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi denganparameter yang sesuai.

untuk mencari hasil distribusi, kita akan menggunakan fungsi ``dbinom()``

```R
n <- 10
p <- 0.488
x <- 0:n
distb <- dbinom(x, n, p)
print(distb)
```
Result:
![Hasil](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/A.png?raw=true)

### B. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin lakilaki?

untuk solusi tersebut kita akan menggunakna ``dbinom()`` dengan nilai **x** nya adalah 3

```R
probTigaLakiLaki <- dbinom(3, n, p)
print(probTigaLakiLaki)
```
Result:
![Hasil 2](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/B.png?raw=true)

### C. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?

untuk mencari probabilitas kurang dari 3 bayi adalah laki-laki atau tidak laki-laki adalah dengan menggunakan ``pbinom()`` dengan value **q** adalah 2

```R
probKurangDuaLakiLaki <- pbinom(2, n, p)
print(probKurangDuaLakiLaki)
```
Result:
![Hasil 3](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/C.png?raw=true)

###  D. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?

Untuk mencari probabilitas 3 atau lebih bayi berjenis kelamin laki-laki, adalah dengan mencari nilai 1 - probabilitas kurang dari 2 bayi adalah laki-laki, cara lainnya adalha menggunakan ``pbinom()`` dan set ``lower.tail = false`` daripada true

```R
probTigaAtauLebihLakiLaki <- 1 - probKurangDuaLakiLaki
print(probTigaAtauLebihLakiLaki)
```
Result:
![Hasil 4](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/D.png?raw=true)

### E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?

nilai harapan sama dengan mean yakni probabilitas dikali jumlah bayi-laki-laki. dan nilai simpangan baku adalah akar ``((1-p) * harapan)``

```R
harapan <- p * n
simpanganBaku <- sqrt((1-p) * harapan)
cat("Harapan: ",harapan," Simpangan Baku:", simpanganBaku)
```
Result:
![Hasil 5](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/E.png?raw=true)

### F. Gambarkan histogram pendistribusian banyak bayi laki-laki!

Untuk mencari nilai dari plot dari distirbusi adalah menggunakan ``rbinom()`` dan ``hist()`` untuk penggambaran histogram

```R
hist(rbinom(100, n, p), main = "Histogram Distribusi Bayi Laki-laki", xlab = "Banyak Bayi Laki-Laki", ylab = "Frekuensi")
```
Result:
![Hasil 6](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%201/F.png?raw=true)

## Nomor 2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik
ban dalam 20 tahun ke depan adalah 1,8.

### A.  Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.

Untuk solusi tersebutm kita perlu menggunakan ``dpois()``

```R
lambd <- 1.8
x <- 0:15
distb <- dpois(x,lambd)
print(distb)
plot(type="l", distb, main="Distribusi Kematian Kanker Tulang", xlab="Jumlah Kematian", ylab="Probabilitas")
```
Result:
![Hasil 7](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/A.png?raw=true)

### B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.


```R
probs <- dpois(4,lambd)
cat("Probabilitas: ", probs)
```
Result:
![Hasil 8](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/B.png?raw=true)

### C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?

Untuk mencari peluang dari 4 kematian adalah menggunakan ``ppois()``

```R
probs <- ppois(4, lambd)
cat("Peluang Paling Banyak 4 Kematian Akibat Kangker Tulang: ", probs)
```
Result:
![Hasil 9](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/C.png?raw=true)

### D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?

Seperti solusi sebelumnya, kita hanya perlu mengurangi 1 - probabilitas dari 4 kematian atau gunakan ``ppois()`` dan set nilai ``lower.tail = false``

```R
probs <- 1-(probs)
cat("Peluang Kematian Lebih Dari 4 Akibat Kanker Tulang: ", probs)
```
Result:
![Hasil 10](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/D.png?raw=true)

### E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?

Nilai dari standar deviasi adalah akar kuadrat dari harapan yang nilainya sama dengan lambda

```R
harapan <- lambd
standardDeviasi <- sqrt(harapan)
cat("Harapan: ", harapan, "; Standard Deviasi: ", standardDeviasi)
```
Result:
![Hasil 11](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/E.png?raw=true)

### F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

Untuk solusi kali ini, kita gunakan ``rpois()`` dan ``hist()`` untuk menggambarkan distribusi

```R
n <- 10
hist(rpois(n, lambd),ylab="Frekuensi", main="Histogram Distribusi Kematian Akibat Kanker Tulang")
```
Result:
![Hasil 12](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/F.png?raw=true)

### G. Gunakan simulasi untuk memeriksa hasil sebelumnya.

Untuk simulasi kita akan gunakan ``rpois()``

```R
set.seed(123321)
res <- rpois(n,lambd)
print(res)
```
Result:
![Hasil 13](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%202/G.png?raw=true)

### H. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

```txt
Banyak kematian akibat kanker tulang dalam simulasi memiliki distribusi yang hampir sama dengan distribusi Poisson dengan lambda 1,8. Hasil simulasi menunjukkan bahwa nilai harapan dan standar deviasi kematian akibat kanker tulang untuk pekerja pabrik ban dapat diestimasi dengan cukup baik menggunakan distribusi Poisson. Kematian 4 sangat jarang terjadi, meskipun setiap seed memiliki hasil yang berbeda dan terkadang menunjukkan kematian 4 yang cukup banyak.
```

## Nomor 3.
Diketahui nilai x = 3 dan v = 10. Tentukan:

### A. Fungsi probabilitas dari distribusi Chi-Square.

Untuk solusi kali ini, kita akan menggunakan ``dchisq()``

```R
x <- 3
v <- 10
dchisq(x, v)
```
Result:
![Hasil 14](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%203/A.png?raw=true)

### B. Histogram dari distribusi Chi-Square dengan 500 data acak.

Untuk data acak, kita akan menggunakan ``rchsiq()`` dan ``hist()`` untuk histogram

```R
n <- 500
hist(rchisq(n,v),main="Histogram Distribusi Chi-Square", xlab="X", ylab="V")
```
Result:
![Hasil 15](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%203/B.png?raw=true)

### C. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.

nilai rataan didapat dari nilai v, dan nilai varian adalah 2 * v

```R
μ <- v
variant <- 2 * v
cat("μ: ", μ, "; Varian: ", variant)
```
Result:
![Hasil 16](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%203/C.png?raw=true)

## Nomor 4
Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
Tentukan:

### A. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
Keterangan:
X1 = Bilangan bulat terdekat di bawah rata-rata
X2 = Bilangan bulat terdekat di atas rata-rata
Contoh data:
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6

untuk bangkitan data acak, kita akan menggunakan ``rnorm()``. Lalu nilai P(X1 <= x <= X2) bisa kita dapatkan menggunakan ``pnorm()`` dari X2 dikurangi nilai ``pnorm()`` dari X1. Lalu hasil tersebut kita plot menggunakna ``plot()`` 

```R
n <- 100
mean <- 45
sd <- 5

gen <- rnorm(n, mean, sd)
cat("Data: ", gen)
summary(gen)

p <- pnorm(runif(1, mean, max(gen)), mean, sd) - pnorm(runif(1, min(gen), mean), mean, sd)
print(p)
plot(gen)
```
Result:
![Hasil 17](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%204/A.png?raw=true)

### B. Gambarkan histogram dari distribusi Normal dengan breaks 50

Solusi tersebut bisa kita dapatkan dari penyelesaian sebelumnya dan kita buat hitogramnya dengan ``hist()`` dengan breaks 50 

```R
breaks <- 50
hist(gen, breaks, main = "Histogram Distribusi Normal")
```
Result:
![Hasil 18](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%204/B.png?raw=true)

### C. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.

varian bisa kita dapatkan dari hasil kuadrat standard deviasi.

```R
varian <- (sd(gen)) ^ 2
print(varian)
```
Result:
![Hasil 19](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%204/C.png?raw=true)

## Nomor 5
Kerjakanlah menggunakan distribusi T-Student.

### A. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?
```R
df <- 6
q <- -2.34
prob <- pt(q,df)
cat("Probabilitas 6 derajat kebebasan dan x < -2.34: ", prob)
```

Result:
![Hasil 20](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/A.png?raw=true)

### B. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?

Probabilitas peristiwa acak X, bisa kita dapatkan dengan ``pt()`` dan ``lower.tail = FALSE``

```R
df <- 1.34
probGreaterThan_134 <- pt(q, df, lower.tail = FALSE)
cat("Probabilitas 6 derajat kebebasan dan x > 1.34: ", probGreaterThan_134)
```
Result:
![Hasil 21](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/B.png?raw=true)

### C. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?

Solusi teersebut bisa didaaptkan dengan mencari jumlah ``pt()`` pada dua batas. 

```R
df <- 3
probAround <- (pt(-1.23, df) + (pt(1.23, df, lower.tail = FALSE)))
print(probAround)
```
Result:
![Hasil 22](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/C.png?raw=true)

### D. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?

Solusi tersebut adalah dengan mengurangi nilai ``pt()`` batas kanan dan kiri.

```R
df <- 14
probAround_094 <- (pt(0.94, df) - pt(-0.94, df))
print(probAround_094)
```
Result:
![Hasil 24](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/D.png?raw=true)

### E. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?

Nilai t_score bisa kita dapatkan dengan ``t_score()`` pada luasan 0,0333.

```R
df <- 5
t_score <- qt(0.0333, df)
print(t_score)
```
Result:
![Hasil 25](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/E.png?raw=true)

### F. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?

Mirip dengan sbeelumnya, namun untuk kali ini, kita berfokus pada t-score di sebelah kanan. sehingga kita set ``lower.tail = FALSE``. lalu untuk nilai x nya adlah 1 - 0,125

```R
df <- 25
t_score <- qt(1 - 0.125, df, lower.tail=FALSE)
print(t_score)
```
Result:
![Hasil 26](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/F.png?raw=true)

### G. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?

Untuk problem kali ini, kita akan menggunakan nilai x nya adalah 0.75 + ((1-0.75)/2) untuk nilai luasan  0,75 di bawah kurva dan diantara t-score.

```R
x <- 0.75 + ((1-0.75)/2)
df <- 11
t_score <- qt(x, df=df, lower.tail=TRUE)
print(t_score)
```
Result:
![Hasil 27](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/G.png?raw=true)

### H. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?

Luasan bisa didapatkan dengan membagi 2 total luasan yakni 0,0333. Nilai t-score di sebelah kiri, bisa didapatkan dengan mencari nilai 1 - 0,0333/2. dengan begitu nilai x yang kita gunakan adalah (1 - 0,0333/2) 

```R
x <- (1 - (0,0333/2))
df <- 23
t_score <- qt(x, df=23)
cat("t-score: ", t_score)
```
Result:
![Hasil 28](https://github.com/DJumanto/Prak1_Probstat2023_C_5025211214/blob/main/Nomor%205/H.png?raw=true)
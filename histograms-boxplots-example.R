### Boxplot
## Gráfico de caixas com min, max, mediana, Q1, Q3 e outliers

boxplot(<sequencia>)

# Boxplot of MPG by Car Cylinders
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
xlab="Number of Cylinders", ylab="Miles Per Gallon")

# Another example
dados <- rexp(1000, 0.25)
boxplot(dados)

# Plotando a largura da pétala de iris por espécie
boxplot(iris$Petal.Width ~ iris$Species)

### Histogramas

# hist(<sequencia>, freq=<Bool>)

# Histograma de uma amostra normal, com media 15 e desvio 2
hist(rnorm(1000,15,2))

# Histograma de uma amostra exponencial, com lambda=0.25
hist(rexp(1000,0.25))

# Histograma da variável Speed do dataset cars
hist(cars$speed)

# Histograma da variável Speed do dataset cars, usando densidade
hist(cars$speed, freq=FALSE)
# Inicia link com o dataset
attach(trees)

# Gera modelo de regressão para explicar Circunferencia em função de Volume
fit <- lm(Girth ~ Volume)

# Gera dataframe com valor a estimar, com apenas 1 observação
newdata <- data.frame(Volume=64)

# Faz a predição
predict(fit, newdata, interval="predict")

# Guarda resultado para plotar
ptoX <- 64
ptoY <- predict(fit, newdata, interval="predict")[1]

# Retira o link com o dataset
detach(trees)

# Plotando a reta de regressão juntamente com os dados do modelo
plot(trees$Volume, trees$Girth, col='blue', pch=19)
abline(fit)

# Plota ponto estimado de vermelho
points(ptoX, ptoY, col='red', pch=19)
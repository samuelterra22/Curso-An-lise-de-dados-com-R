### Modelo de Regressão Linear Simples
## Modela dados na forma y = ax + b + resíduo
## Utiliza comando lm do R

# Dados
height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)

# Plot
plot(bodymass, height, pch = 16, cex = 1.3, col = "blue",
main = "HEIGHT PLOTTED AGAINST BODY MASS",
xlab = "BODY MASS (kg)", ylab = "HEIGHT (cm)")

# Ajuste linear
fit <- lm(height ~ bodymass)
fit

# Acrescenta a reta de regressão com 'a' e 'b' calculados por lm
abline(lm(height ~ bodymass))

## Fórmula para associar uma variável independente com uma variável dependente

lm(<formula>, data=<dataframe>)

# Ajustando a velocidade em função da distância no dataset cars
fit <- lm(speed ~ dist, cars)

# Apresenta o sumário dos dados ajustados
summary(fit)

# Multiple Linear Regression Example
fit <- lm(y ~ x1 + x2 + x3, data=mydata)
summary(fit) # show results
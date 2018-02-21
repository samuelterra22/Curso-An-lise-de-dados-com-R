### Dot plot
## Plot de pontos

# dotchart(<frame>$<VAR>, labels=<vetor>)

# Simple Dotplot
dotchart(mtcars$mpg, labels = row.names(mtcars), cex = .7, main = "Gas Milage for Car Models", xlab = "Miles Per Gallon")

### Bar Plot
## Plot de Gráfico de Barras

# barplot(<vetor>)

# Simple Bar Plot
counts <- table(mtcars$gear)
barplot(counts, main = "Car Distribution", xlab = "Number of Gears")

### Scatterplot
## Plot de Dispersão XY

# plot(<sequencia1>, <sequencia2>)

# Argumentos típicos do comando plot
# * xlab: rótulo do eixo X
# * ylab: rótulo do eixo Y
# * main: título principal do plot
# * col: cor dos pontos plotados
# * sub: sub-título do gráfico

# Simple Scatterplot
attach(mtcars)
plot(wt, mpg, main = "Scatterplot Example", xlab = "Car Weight ", ylab = "Miles Per Gallon ", pch = 19)

### Line Plot
## Plot de Linhas

# lines(<sequencia1>, <sequencia2>)

# Parâmetros para type
# * p   Pontos
# * l   Linhas
# * o   Linhas e pontos sobrepostos
# * n   Não produz pontos ou linhas
# * h   Linha vertical tipo histograma

# Plota a funcao f(x) = x^2 + sin(x)
X <- seq(- 10, 10, 0.5)
Y <- X ^ 2 + sin(X)
plot(X, Y, type = 'n')
lines(X, Y, col = 'red', type = 'o')

### Pie Chart
## Pie Chart

# pie(<vetor>, labels=<vetLab>)

# Simple Pie Chart
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main = "Pie Chart of Countries")
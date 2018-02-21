### Estatística Descritiva

## Obtendo sumário estatístico das variáveis mediante função

# sapply(<frame>, fun=<função>)

# get means for variables in data frame mydata excluding missing values
sapply(mydata, mean, na.rm=TRUE)

# Funções que podem ser usadas:
# * mean
# * sd
# * var
# * min
# * max
# * median
# * range
# * quantile

## Obtendo sumário estatístico das variáveis com algumas medidas de dispersão

# summay(<frame>)

# mean,median,25th and 75th quartiles,min,max
summary(mydata)

# Tukey min,lower-hinge, median,upper-hinge,max
fivenum(x)
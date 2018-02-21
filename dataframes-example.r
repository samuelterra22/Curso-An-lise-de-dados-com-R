### Selecionando variáveis de um dataframe pelo nome

# select variables v1, v2, v3
myvars <- c("v1", "v2", "v3")
newdata <- mydata[myvars]

### Selecionando variáveis de um dataframe por índice e intervalo.

# another method
myvars <- paste("v", 1:3, sep="")
newdata <- mydata[myvars]

# select 1st and 5th thru 10th variables
newdata <- mydata[c(1,5:10)]

### Removendo variáveis de um dataframe usando vetor de booleans

# exclude variable v2 in v1, v2, v3
newdata <- mydata[c(TRUE, FALSE, TRUE)]

### Removendo variáveis de um dataframe indicando o índice da coluna

# exclude 3rd and 5th variable
newdata <- mydata[c(-3,-5)]

### Removendo variáveis de um dataframe atribuindo NULL à coluna (apaga a coluna)

# delete variables v3 and v5
mydata$v3 <- mydata$v5 <- NULL

### Selecionando observações de um dataframe segundo as linhas do dataset

# first 5 observations
newdata <- mydata[1:5,]

### Selecionando observações de um dataframe segundo o valor dos campos

# based on variable values
newdata <- mydata[ which(mydata$gender=='F' & mydata$age > 65),]

### Selecionando observações de um dataframe usando subset

# using subset function
newdata <- subset(mydata, age >= 20 | age < 10,
select=c(ID, Weight) )

# using subset function (part 2)
newdata <- subset(mydata, sex=='m' & age > 25,
select=weight:income)

### Ordenando um dataframe

# sort by mpg and cyl
newdata <- mtcars[order(mtcars$mpg, mtcars$cyl),]

#sort by mpg (ascending) and cyl (descending)
newdata <- mtcars[order(mtcars$mpg, -mtcars$cyl),]

### Adicionando colunas um dataframe. É feito juntando-se dois dataframes por meio de uma ou mais variáveis em comum (semelhante à um inner join)
# <novo.frame> <- merge(<frameA>, <frameB>, by="VAR" )

### Adicionando linhas à um dataframe. Junta-se dois dataframes verticalmente desde que possuam as mesmas variáveis
# <novo.frame> <- rbind(<frameA>, <frameB>)

# merge two data frames by ID and Country
total <- merge(data frameA,data frameB,by=c("ID","Country"))

### Agregando dados um dataframe e retorna sumário estatístico da agregação

# <resultado> <- aggregate(<dataframe>, by=list(<VARS>), fun=<função> )

# aggregate data frame mtcars by cyl and vs, returning means for numeric variables
attach(mtcars)
aggdata <-aggregate(mtcars, by=list(cyl,vs), FUN=mean, na.rm=TRUE)
print(aggdata)
detach(mtcars)
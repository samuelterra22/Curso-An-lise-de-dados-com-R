### Importando Arquivo .CSV
## Importando um arquivo no formato comma-separated values (.csv) e salvando o resultado em um dataframe

# <frame> <- read.csv("<file>",header=<bool>),sep="<char>")

# Le o conteudo do arquivo auto-mpg.csv em dataset
auto <- read.csv("auto-mpg.csv", header=TRUE, sep = ",")

# Verifica o nome das variáveis contidas nele
names(auto)

# Outro exemplo, usando ';' como separador de campos
frame <- read.csv("test.csv", sep=";", dec=",")

### Importando Arquivo ASCII
## Importando um arquivo no formato ASCII

# <frame> <- read.table("<file>",header=<bool>,sep="<char>")

# Carrega o conteúdo do arquivo de dados
frame <- read.table("dados.txt", header=TRUE)
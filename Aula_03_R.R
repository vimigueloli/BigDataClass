#1- abra o cancer.txt como um dataframe
arq <- read.table('cancer.txt', header = T)
print(arq)


#2- usando um loop for daça o histograma das  variaveis LGH, ALB e N. use cores diferentes
campos <- c('LDH', 'ABL', 'N'); campos
titulos <- c('Lactate dehydrogenase (LDH)', 'Albumina(ALB)', 'Nitrogênio na Uréia(N)');titulos
cores <- c('blue', 'green' ,'red'); cores

n <- 1:length(campos)
n
?par
par(mfrow=c(1,3))

arq['LDH']
par(mfrow=c(1,1))
    
for (i in n){
  hist(arq[[campos[i]]],main = titulos[i], col = cores[i],xlab = campos[i],ylab = 'frequencia')
}

arq
arq$Grupo
arq$Grupo == 1;

arq[TRUE, 'Idade'];
arq[c(T,F), 'Idade'];

arq[arq$grupo ==1, 'Idade' ]

#


# Árvore de classificação (CART)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("rpart", quietly = TRUE)) install.packages("rpart")
library(rpart)
d <- transform(mtcars, am = factor(am))
ajuste <- rpart(am ~ wt + hp, data = d, method = "class",
               control = rpart.control(cp = 0.01))
printcp(ajuste)
plot(ajuste); text(ajuste, use.n = TRUE)
print(table(real = d$am, previsto = predict(ajuste, type = "class")))

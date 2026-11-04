# Árvore de classificação (CART)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("rpart", quietly = TRUE)) install.packages("rpart")
library(rpart)
d <- transform(mtcars, am = factor(am))
ajuste <- rpart(am ~ wt + hp, data = d, method = "class",
               control = rpart.control(cp = 0.01))
printcp(ajuste)
plot(ajuste); text(ajuste, use.n = TRUE)
print(table(real = d$am, previsto = predict(ajuste, type = "class")))

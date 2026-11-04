# Árvore de regressão (CART)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("rpart", quietly = TRUE)) install.packages("rpart")
library(rpart)
set.seed(2026)
ajuste <- rpart(mpg ~ wt + hp + qsec, data = mtcars,
               method = "anova", control = rpart.control(cp = 0.01))
printcp(ajuste)
plot(ajuste); text(ajuste, use.n = TRUE, cex = 0.8)

# Regressão logística multinomial
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
d <- transform(mtcars, cyl = factor(cyl))
ajuste <- multinom(cyl ~ wt + hp, data = d, trace = FALSE)
print(summary(ajuste))
print(head(predict(ajuste, type = "probs")))
print(table(real = d$cyl, previsto = predict(ajuste)))

# Regressão logística multinomial
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
d <- transform(mtcars, cyl = factor(cyl))
ajuste <- multinom(cyl ~ wt + hp, data = d, trace = FALSE)
print(summary(ajuste))
print(head(predict(ajuste, type = "probs")))
print(table(real = d$cyl, previsto = predict(ajuste)))

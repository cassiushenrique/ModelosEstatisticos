# Rede sem camada oculta (classificador logístico)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("nnet", quietly = TRUE)) install.packages("nnet")
library(nnet)
set.seed(2026)
d <- mtcars
d$wt <- as.numeric(scale(d$wt))
d$hp <- as.numeric(scale(d$hp))
d$am <- factor(d$am)
ajuste <- nnet(am ~ wt + hp, data = d, size = 0,
              skip = TRUE, entropy = TRUE, maxit = 500,
              trace = FALSE)
print(table(real = d$am,
            previsto = predict(ajuste, type = "class")))

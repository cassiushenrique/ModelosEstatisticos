# Análise discriminante linear (LDA)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- sample(seq_len(nrow(d)), 22)
ajuste <- lda(classe ~ wt + hp, data = d[i, ])
prev <- predict(ajuste, newdata = d[-i, ])
print(table(real = d$classe[-i], previsto = prev$class))

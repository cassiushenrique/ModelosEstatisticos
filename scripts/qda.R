# Análise discriminante quadrática (QDA)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("MASS", quietly = TRUE)) install.packages("MASS")
library(MASS)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
# Treino estratificado para manter cada classe.
i <- unlist(lapply(split(seq_len(nrow(d)), d$classe),
                  function(z) sample(z, max(5, length(z) - 2))))
ajuste <- qda(classe ~ wt + hp, data = d[i, ])
prev <- predict(ajuste, newdata = d[-i, ])
print(table(real = d$classe[-i], previsto = prev$class))

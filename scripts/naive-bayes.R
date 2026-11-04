# Naive Bayes
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("e1071", quietly = TRUE)) install.packages("e1071")
library(e1071)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- unlist(lapply(split(seq_len(nrow(d)), d$classe),
                  function(z) sample(z, max(3, length(z) - 2))))
ajuste <- naiveBayes(classe ~ wt + hp, data = d[i, ])
pred <- predict(ajuste, d[-i, ])
print(table(real = d$classe[-i], previsto = pred))

# SVM com kernel radial (RBF)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

if (!requireNamespace("e1071", quietly = TRUE)) install.packages("e1071")
library(e1071)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- unlist(lapply(split(seq_len(nrow(d)), d$classe),
                  function(z) sample(z, max(3, length(z) - 2))))
ajuste <- svm(classe ~ wt + hp, data = d[i, ],
              kernel = "radial", cost = 1, gamma = 0.5,
              scale = TRUE)
print(table(real = d$classe[-i],
            previsto = predict(ajuste, d[-i, ])))

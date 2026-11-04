# K-nearest neighbors (KNN)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("class", quietly = TRUE)) install.packages("class")
library(class)
set.seed(2026)
d <- transform(mtcars, classe = factor(cyl))
i <- unlist(lapply(split(seq_len(nrow(d)), d$classe),
                  function(z) sample(z, max(3, length(z) - 2))))
X <- d[, c("wt", "hp")]
centro <- colMeans(X[i, , drop = FALSE])
escala <- apply(X[i, , drop = FALSE], 2, sd)
treino <- scale(X[i, , drop = FALSE], center = centro, scale = escala)
teste <- scale(X[-i, , drop = FALSE], center = centro, scale = escala)
pred <- knn(train = treino, test = teste,
            cl = d$classe[i], k = 3)
print(table(real = d$classe[-i], previsto = pred))

# Regressão lasso
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("glmnet", quietly = TRUE)) install.packages("glmnet")
library(glmnet)
set.seed(2026)
x <- model.matrix(mpg ~ wt + hp + disp + qsec + drat, mtcars)[, -1]
y <- mtcars$mpg
ajuste <- cv.glmnet(x, y, alpha = 1, nfolds = 5)
print(coef(ajuste, s = "lambda.min"))
plot(ajuste)

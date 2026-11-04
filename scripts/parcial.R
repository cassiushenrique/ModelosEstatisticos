# Correlação parcial
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

rx <- residuals(lm(hp ~ wt, data = mtcars))
ry <- residuals(lm(mpg ~ wt, data = mtcars))
r <- cor(rx, ry)
n <- nrow(mtcars); q <- 1
t <- r * sqrt((n - q - 2) / (1 - r^2))
p <- 2 * pt(-abs(t), df = n - q - 2)
print(c(correlacao_parcial = r, t = t, p_valor = p))

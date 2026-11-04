# Regressão logística binária
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

ajuste <- glm(am ~ wt + hp, data = mtcars, family = binomial())
print(summary(ajuste))
print(exp(cbind(OR = coef(ajuste), confint.default(ajuste))))
prob <- predict(ajuste, type = "response")
print(table(real = mtcars$am, previsto = as.integer(prob >= 0.5)))

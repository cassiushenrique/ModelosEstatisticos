# Regressão logística binária
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

ajuste <- glm(am ~ wt + hp, data = mtcars, family = binomial())
print(summary(ajuste))
print(exp(cbind(OR = coef(ajuste), confint.default(ajuste))))
prob <- predict(ajuste, type = "response")
print(table(real = mtcars$am, previsto = as.integer(prob >= 0.5)))

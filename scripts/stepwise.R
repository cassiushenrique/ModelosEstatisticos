# Seleção stepwise por AIC
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

modelo_completo <- lm(mpg ~ wt + hp + disp + qsec + drat,
                      data = mtcars)
selecionado <- step(modelo_completo, direction = "both", trace = 0)
print(formula(selecionado))
print(AIC(modelo_completo, selecionado))

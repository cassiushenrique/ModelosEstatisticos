# Teste t para uma amostra
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

resultado <- t.test(mtcars$mpg, mu = 20, conf.level = 0.95)
print(resultado)
qqnorm(mtcars$mpg); qqline(mtcars$mpg, col = "red")

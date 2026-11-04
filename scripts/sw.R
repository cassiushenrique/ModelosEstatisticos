# Shapiro–Wilk
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

x <- mtcars$disp
qqnorm(x); qqline(x, col = "red")
resultado <- shapiro.test(x)
print(resultado)
cat(ifelse(resultado$p.value < 0.05, "Evidência contra normalidade", "Sem evidência suficiente contra normalidade"), "
")

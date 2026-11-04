# Tukey HSD / Tukey–Kramer
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

modelo <- aov(breaks ~ tension, data = warpbreaks)
resultado <- TukeyHSD(modelo, conf.level = 0.95)
print(resultado)
plot(resultado)

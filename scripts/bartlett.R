# Bartlett
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

by(warpbreaks$breaks, warpbreaks$tension, shapiro.test)
print(bartlett.test(breaks ~ tension, data = warpbreaks))

# Bartlett
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

by(warpbreaks$breaks, warpbreaks$tension, shapiro.test)
print(bartlett.test(breaks ~ tension, data = warpbreaks))

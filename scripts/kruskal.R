# Kruskal–Wallis
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

resultado <- kruskal.test(breaks ~ tension, data = warpbreaks)
print(resultado)
print(pairwise.wilcox.test(warpbreaks$breaks, warpbreaks$tension,
                           p.adjust.method = "holm", exact = FALSE))

# Kruskal–Wallis
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

resultado <- kruskal.test(breaks ~ tension, data = warpbreaks)
print(resultado)
print(pairwise.wilcox.test(warpbreaks$breaks, warpbreaks$tension,
                           p.adjust.method = "holm", exact = FALSE))

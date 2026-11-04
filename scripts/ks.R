# Kolmogorov–Smirnov (uma amostra)
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

x <- cars$dist
# Distribuição de referência especificada previamente:
resultado <- ks.test(x, "pnorm", mean = 40, sd = 25)
print(resultado)
plot(ecdf(x), main = "Distância de frenagem: F empírica")
curve(pnorm(x, 40, 25), add = TRUE, col = "red")

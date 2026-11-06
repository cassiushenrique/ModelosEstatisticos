# Kolmogorov–Smirnov (uma amostra) ----

# Ajuste e resultados ----
x <- cars$dist
# Distribuição de referência especificada previamente:
resultado <- ks.test(x, "pnorm", mean = 40, sd = 25)
print(resultado)
plot(ecdf(x), main = "Distância de frenagem: F empírica")
curve(pnorm(x, 40, 25), add = TRUE, col = "red")

# Visualização e diagnóstico ----
hist(cars$dist, breaks = "FD", main = "Distribuição das distâncias", xlab = "Distância de parada (pés)")

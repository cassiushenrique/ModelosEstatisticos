# Shapiro–Wilk ----

# Ajuste e resultados ----
x <- mtcars$disp
qqnorm(x); qqline(x, col = "red")
summary(x)
sd(x)
resultado <- shapiro.test(x)
print(resultado)
cat(ifelse(resultado$p.value < 0.05, "Evidência contra normalidade", "Sem evidência suficiente contra normalidade"), "\n")

# Visualização e diagnóstico ----
hist(x, breaks = "FD", col = "gray85", border = "white", main = "Distribuição da cilindrada", xlab = "Cilindrada (pol³)")
qqnorm(x, pch = 19, main = "Gráfico Q-Q da cilindrada")
qqline(x, col = "red", lwd = 2)

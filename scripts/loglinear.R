# Análise log-linear ----

# Ajuste e resultados ----
d <- as.data.frame(Titanic)
m0 <- glm(Freq ~ Class + Sex + Age + Survived,
          data = d, family = poisson())
m1 <- update(m0, . ~ . + Class:Survived)
print(anova(m0, m1, test = "Chisq"))
print(summary(m1))

# Visualização e diagnóstico ----
mosaicplot(Titanic, main = "Contagens por categoria", color = TRUE)

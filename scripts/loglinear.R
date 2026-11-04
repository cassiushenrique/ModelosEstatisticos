# Análise log-linear
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

d <- as.data.frame(Titanic)
m0 <- glm(Freq ~ Class + Sex + Age + Survived,
          data = d, family = poisson())
m1 <- update(m0, . ~ . + Class:Survived)
print(anova(m0, m1, test = "Chisq"))
print(summary(m1))

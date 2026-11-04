# Análise log-linear
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

d <- as.data.frame(Titanic)
m0 <- glm(Freq ~ Class + Sex + Age + Survived,
          data = d, family = poisson())
m1 <- update(m0, . ~ . + Class:Survived)
print(anova(m0, m1, test = "Chisq"))
print(summary(m1))

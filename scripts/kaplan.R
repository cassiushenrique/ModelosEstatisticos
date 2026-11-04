# Estimador Kaplan–Meier
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
modelo <- survfit(Surv(time, status == 2) ~ sex,
                 data = lung, conf.type = "log-log")
print(summary(modelo))
plot(modelo, col = c("#12372A", "#C68A3B"), lwd = 2,
     xlab = "Tempo", ylab = "Sobrevivência estimada")

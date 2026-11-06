# Estimador Kaplan–Meier ----

# Ajuste e resultados ----
if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
modelo <- survfit(Surv(time, status == 2) ~ sex,
                 data = lung, conf.type = "log-log")
print(modelo)
print(summary(modelo, times = c(180, 365)))
plot(modelo, col = c("#12372A", "#C68A3B"), lwd = 2, conf.int = TRUE,
     xlab = "Tempo", ylab = "Sobrevivência estimada")

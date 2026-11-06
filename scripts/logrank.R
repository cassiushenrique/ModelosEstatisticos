# Teste log-rank ----

# Ajuste e resultados ----
if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
resultado <- survdiff(Surv(time, status == 2) ~ sex,
                     data = lung, rho = 0)
print(resultado)
p <- pchisq(resultado$chisq, df = length(resultado$n) - 1,
            lower.tail = FALSE)
print(p)

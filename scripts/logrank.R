# Teste log-rank
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: e-book Psicometria Online

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
resultado <- survdiff(Surv(time, status == 2) ~ sex,
                     data = lung, rho = 0)
print(resultado)
p <- pchisq(resultado$chisq, df = length(resultado$n) - 1,
            lower.tail = FALSE)
print(p)

# Teste generalizado de Wilcoxon–Gehan
# Estatística e Ciência de Dados — ICTIN/UFLA
# Exemplo reproduzível com dados de R ou dos pacotes indicados.

if (!requireNamespace("survival", quietly = TRUE)) install.packages("survival")
library(survival)
d <- subset(lung, !is.na(time) & !is.na(status) & !is.na(sex))
d$evento <- as.integer(d$status == 2)
d$grupo <- as.integer(d$sex == 2)
U <- 0; V <- 0
for (t in sort(unique(d$time[d$evento == 1]))) {
  risco <- d$time >= t
  evento <- d$time == t & d$evento == 1
  n <- sum(risco); n1 <- sum(risco & d$grupo == 1)
  n0 <- n - n1; dt <- sum(evento)
  o1 <- sum(evento & d$grupo == 1)
  if (n > 1) {
    U <- U + n * (o1 - dt * n1 / n)
    V <- V + n^2 * (n1 * n0 * dt * (n - dt)) / (n^2 * (n - 1))
  }
}
qui <- U^2 / V
print(c(qui_quadrado = qui, gl = 1,
        p_valor = pchisq(qui, df = 1, lower.tail = FALSE)))

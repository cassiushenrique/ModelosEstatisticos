# Redes neurais recorrentes (RNN)
# Material didático — Estatística e Ciência de Dados — ICTIN/UFLA
# Fonte: James et al. (2021)

# Requer Python/TensorFlow configurados: uma vez,
# antes da primeira utilização: keras3::install_keras()
if (!requireNamespace("keras3", quietly = TRUE)) install.packages("keras3")
library(keras3)
set.seed(2026)
s <- as.numeric(log(AirPassengers))
centro <- mean(s[1:100]); escala <- sd(s[1:100])
z <- (s - centro) / escala
janela <- 12
X <- array(0, c(length(z) - janela, janela, 1))
Y <- numeric(length(z) - janela)
for (i in seq_along(Y)) {
  X[i,,1] <- z[i:(i+janela-1)]
  Y[i] <- z[i+janela]
}
tr <- 1:100; te <- 101:length(Y)
modelo <- keras_model_sequential(input_shape = c(janela, 1)) |>
  layer_simple_rnn(units = 12, activation = "tanh") |>
  layer_dense(units = 1)
modelo |> compile(optimizer = "adam", loss = "mse")
modelo |> fit(X[tr,,,drop=FALSE], Y[tr], epochs = 25,
              batch_size = 16, verbose = 0)
pred <- as.numeric(modelo |> predict(X[te,,,drop=FALSE], verbose = 0))
print(c(RMSE_log_padronizado = sqrt(mean((Y[te] - pred)^2))))

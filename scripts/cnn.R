# Redes neurais convolucionais (CNN) ----

# Ajuste e resultados ----
if (!requireNamespace("keras3", quietly = TRUE)) install.packages("keras3")
library(keras3)
set.seed(2026)
mapa <- as.matrix(volcano)
pos <- expand.grid(i = 3:(nrow(mapa)-2), j = 3:(ncol(mapa)-2))
pos <- pos[sample.int(nrow(pos), 600), ]
x <- array(0, dim = c(600, 5, 5, 1))
y <- numeric(600)
for (k in seq_len(600)) {
  i <- pos$i[k]; j <- pos$j[k]
  x[k,,,1] <- mapa[(i-2):(i+2), (j-2):(j+2)] / 200
  x[k,3,3,1] <- 0  # mascara altura central (alvo)
  y[k] <- as.integer(mapa[i,j] > median(mapa))
}
i <- sample.int(600, 480)
modelo <- keras_model_sequential(input_shape = c(5, 5, 1)) |>
  layer_conv_2d(filters = 8, kernel_size = 3, activation = "relu") |>
  layer_flatten() |>
  layer_dense(units = 1, activation = "sigmoid")
modelo |> compile(optimizer = "adam", loss = "binary_crossentropy",
                  metrics = c("accuracy"))
modelo |> fit(x[i,,, , drop = FALSE], y[i], epochs = 12,
              batch_size = 32, verbose = 0)
print(modelo |> evaluate(x[-i,,, , drop = FALSE], y[-i], verbose = 0))

# Visualização e diagnóstico ----
image(volcano, main = "Mapa de elevações")

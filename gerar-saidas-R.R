# Gerar saídas e gráficos reais no R ----
# Abra o projeto no RStudio e execute: source("gerar-saidas-R.R")
# Requer que os pacotes de cada exemplo já estejam instalados.
# A execução de redes profundas também depende de keras3/TensorFlow configurados.

arquivos <- list.files("scripts", pattern = "\\.R$", full.names = TRUE)
for (arquivo in arquivos) {
  nome <- tools::file_path_sans_ext(basename(arquivo))
  destino <- file.path("resultados-R", nome)
  dir.create(destino, recursive = TRUE, showWarnings = FALSE)
  arquivo_console <- file.path(destino, "console.txt")
  con <- file(arquivo_console, open = "wt")
  png(file.path(destino, "grafico-%03d.png"), width = 1100, height = 750, res = 130)
  sink(con, type = "output")
  sucesso <- TRUE
  tryCatch(
    source(arquivo, local = new.env(parent = globalenv()),
           echo = TRUE, print.eval = TRUE),
    error = function(e) {
      sucesso <<- FALSE
      cat("ERRO: ", conditionMessage(e), "\n", sep = "")
    }
  )
  sink(type = "output")
  dev.off()
  close(con)
  if (!sucesso) {
    cat("Atenção: execução incompleta de", nome, "\n")
    next
  }
  pagina <- file.path("metodos", paste0(nome, ".html"))
  if (!file.exists(pagina)) next
  linhas <- readLines(pagina, warn = FALSE, encoding = "UTF-8")
  pagina_html <- paste(linhas, collapse = "\n")
  escape_html <- function(x) {
    x <- gsub("&", "&amp;", x, fixed = TRUE)
    x <- gsub("<", "&lt;", x, fixed = TRUE)
    gsub(">", "&gt;", x, fixed = TRUE)
  }
  saida <- paste(readLines(arquivo_console, warn = FALSE, encoding = "UTF-8"),
                 collapse = "\n")
  imagens <- list.files(destino, pattern = "^grafico-[0-9]+\\.png$", full.names = FALSE)
  imgs <- paste(sprintf('<img class="result-figure" src="../resultados-R/%s/%s" alt="Gráfico gerado em R">', nome, imagens), collapse = "\n")
  bloco <- paste0('<!-- SAIDA_R_INICIO -->\n',
    '<div class="verified-example r-execution"><h3>Saída do R</h3><pre class="output-r">',
    escape_html(saida), '</pre><h3>Gráficos produzidos pelo R</h3>', imgs, '</div>\n',
    '<!-- SAIDA_R_FIM -->')
  # Em reexecuções, substitui o bloco anterior, se existir.
  pagina_html <- sub('<!-- SAIDA_R_INICIO -->.*?<!-- SAIDA_R_FIM -->', '',
                     pagina_html, perl = TRUE)
  pagina_html <- sub('</pre>', paste0('</pre>\n', bloco), pagina_html, fixed = TRUE)
  writeLines(pagina_html, pagina, useBytes = TRUE)
  cat('Incluído na página:', nome, '\n')
}

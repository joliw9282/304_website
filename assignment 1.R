install.packages("tidyverse")
library(tidyverse)

install.packages("blogdown")
library(blogdown)

blogdown::new_site(
  dir = "304 Website Project #1",
  install_hugo = TRUE,
  format = "toml",
  sample = TRUE,
  theme = "yihui/hugo-lithium",
  hostname = "github.com",
  theme_example = TRUE,
  empty_dirs = FALSE,
  to_yaml = TRUE,
  serve = interactive()
)

blogdown::new_post(
  "page 2",
  kind = "",
  open = interactive(),
  author = getOption("blogdown.author"),
  categories = NULL,
  tags = NULL,
  date = Sys.Date(),
  file = NULL,
  slug = NULL,
  title_case = getOption("blogdown.title_case"),
  subdir = getOption("blogdown.subdir", "post"),
  ext = getOption("blogdown.ext", ".rmd")
)
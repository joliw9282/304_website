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


install.packages("opendatatoronto")
install.packages("devtools")

library(opendatatoronto)
library(devtools)

# get package
package <- show_package("64b54586-6180-4485-83eb-81e8fae3b8fe")
package

# get all resources for this package
resources <- list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")
resources

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

blogdown::serve_site()

names(data)[names(data) == "Age Group"] <- "Age"
ggplot(data, aes(x = Age)) + geom_bar(width = 0.5)

names(data)[names(data) == "Age Group"] <- "Age"
# names(data)[names(data) == "Client Gender"] <- "Gender"
ggplot(data, aes(x = Age)) + geom_bar(fill = Outcome)

ggplot(data, aes(x = Outcome)) + geom_bar()



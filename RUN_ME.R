########################################################
######### Shiny app for Profiling comparisons ##########
########################################################

### If you have not already installed rCharts,reshape2,shiny etc then please do so now!

#require(devtools)
#install_github('rCharts','ramnathv')
#install_github('rstudio/shinyapps')
#install.packages("shiny")
#install.packages("ggplot2")
#install.packages("reshape2")

setwd("")

####Set-up for adding shiny app to shinyapps.info
library(shinyapps)
shinyapps::setAccountInfo(name='', 
                          token='', 
                          secret='')

###Run the app locally to test it
library(shiny)
runApp()

###Add permissions
devtools::install_github('rstudio/rscrypt')
library(scrypt)

addAuthorizedUser("")
#removeAuthorizedUser("")
####Deploy app on shinyapps.io
deployApp()

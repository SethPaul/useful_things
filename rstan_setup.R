Sys.setenv(R_INSTALL_STAGED = FALSE)
install.packages('ps', 'pkgbuild', 'callr', ')
install.packages('rstan', dependencies = TRUE)

library_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_df <- as.data.frame(table(pkgs[, 'LibPath']), stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  return(pkg_df)
}

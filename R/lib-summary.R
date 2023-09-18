
#' R Library Summary
#'
#' Provides a brief summary of the pakcage libraries
#' on your machine
#'
#' @return A `data.frame` containing a count of packages in eachof the user's
#' libraries.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_df <- as.data.frame(table(pkgs[, 'LibPath']), stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  return(pkg_df)
}



#' R Library Summary
#'
#' Provides a brief summary of the pakcage libraries
#' on your machine
#'
#' @return A `data.frame` containing a count of packages in each of the user's
#' libraries.  if `sizes = TRUE` a colukn of library sizes will be added.
#'
#' @export
#' @param sizes a boolean to indicate whether to calculate file sizes.
#'  DEFAULT `FALSE`
#'
#' @examples
#' lib_summary()
#' lib_summary(TRUE)
lib_summary <- function(sizes = FALSE) {
  if(!is.logical(sizes)){
    stop("expected boolean")
  }


  pkgs <- utils::installed.packages()
  pkg_df <- as.data.frame(table(pkgs[, 'LibPath']), stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if(sizes) {
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1)
    )
  }

  return(pkg_df)
}



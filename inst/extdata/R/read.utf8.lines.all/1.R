read.utf8.lines.all <- function ( file ) scan (
    blank.lines.skip = FALSE ,
    file = {
        stopifnot ( is.character_string ( file ) )
        file } ,
    fileEncoding = "UTF-8" ,
    na.strings = character () ,
    sep = "\n" ,
    skipNul = FALSE ,
    quiet = TRUE ,
    what = "" )

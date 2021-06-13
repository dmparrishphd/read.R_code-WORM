read.R_code <- function ( file ) {
    LINES <- read.utf8.lines.all ( file )
    TEST <- inR_codeCharSet ( LINES )
    data.frame (
        stringsAsFactors = FALSE ,
        row.names = as.character ( seq_along ( LINES ) ) ,
        TEST ,
        NICE = TEST & ! hasFForTAB ( LINES ) ,
        LINE = LINES ) }

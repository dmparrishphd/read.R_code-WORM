inR_codeCharSet.h <- function ( string )
        all ( inR_codeCharSet.utf32 ( utf8ToInt ( enc2utf8 (
            string ) ) ) )

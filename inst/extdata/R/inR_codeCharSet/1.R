inR_codeCharSet <- function ( .character ) vapply (
	X = .character ,
	FUN.VALUE = NA ,
	USE.NAMES = FALSE ,
	FUN = inR_codeCharSet.h )

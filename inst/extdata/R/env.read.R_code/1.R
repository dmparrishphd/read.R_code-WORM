function ( path , parent = baseenv () , collate = paste0 (
        path , "/inst/extdata/collate/1.csv" ) ) {
    COLLATE <- read.csv ( collate )
    Env <- list ( internal = new.env ( parent = parent ) )
    Env $ export <- new.env ( parent = Env $ internal )
    for ( i in seq_len ( nrow ( COLLATE ) ) ) source (
        file = paste0 ( path , "/" , COLLATE [ i , 2 ] ) ,
        local = Env [[ COLLATE [ i , 1 ] ]] )
    Env $ export }

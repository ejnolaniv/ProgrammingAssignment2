## These are the functions as required for programming assignment two
## The first will compute a matrix. The second will figure out the inverse of the matrix returned.
## If the inverse has already been calculated without changing, then it will grab the inverse from a cache

## COMMENT TO DESCRIBE FUNCTION... Well, the learning curve this week was pretty rough,
##         So I made the most metal function I could to blow off some steam.

makeCacheMatrix = function(QuietRiot = matrix()) {
                    ####   Initialize a few prelims up here                      ########################
    x = NULL        ####   For those of you who might read this, I'm not a fan of using two keystrokes 
                    ####    for the assignment operator.                         ########################
##First big step
    metal = function(noize){
        QuietRiot <<- noize; x <<- NULL; }  #### Reminder! Space these if error. ########################
    health = function() QuietRiot
    head = function() x
    bang = function(solve) x <<- solve

                    #### List                                                    ########################
    list(metal = metal, health = health, head = head, bang = bang)
}


## Second major part

cacheSolve = function(QuietRiot=matrix(), ...) {
    x = QuietRiot$head()
                    #### Test the presence                                       ########################
    if(!is.null(x)){
        return(x)
    }
                    #### If the If test doesn't take                             ########################
    matrix = QuietRiot$health()
                    #### Make sure the ellipse thing works this time             ########################
    x = solve(matrix, ...)  
    QuietRiot$bang(x)
    return(x)       #### Reminder!                                               ########################
}
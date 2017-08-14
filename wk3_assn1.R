
x <- subset(iris, Species=='virginica',select=Sepal.Length)
mean(x[,1]

new <- tapply(mtcars$hp, mtcars$cyl, mean)
round(abs(new[3]-new[1]))



makeVector <- function(x = numeric()) {
        
	m <- NULL
        
	set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
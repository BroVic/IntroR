# Create a simple matrix, mat, for the lecture

# Use of matrix()
# A matrix of number 1 - 12, with 3 rows and 4 columns. The numbers are to run
# the columns, and not by the rows.
mat <- matrix(1:12, nrow = 3, ncol = 4, byrow = FALSE)
mat

# Use of cbind()
# Add a column to matrix, mat, using the nos 8 - 6 (i.e. backwards)
# First make a vector of the right length
colvec <- 8:6
colvec
# Then 'bind' them together
mat <- cbind(mat, colvec)
mat

# Use of rbind()
# Add a row to the bottom of matrix, mat using nos 77 - 81
# Make a vector of the right length
rowvec <- 77:81
rowvec
# Now join this vector to update matrix, mat
mat <- rbind(mat, rowvec)
mat

# remove dimension names (names were added because of vector we created)
# and we don't want them for this exercise. Note that we only created
# vectors first for easy understanding of R beginners.
dimnames(mat) <- NULL
mat

# NB: Actually, all of this could be done in fewer lines of codes, but
# it's good to understand the logic this way!!!



# Your turn!
# 1. Create a vector with 10 random numbers between 10 and 20. Hint: ?runif()
# Give the vector any name you like
# BONUS: Set the seed to 1


# 2. Create a vector called firstName with 10 random first names
# from data in the babynames package. Download and install if necessary
# BONUS: Write a line of code that will enable you to check if a package
# is installed or not.


# 3. Create a vector with a sequence from 1 to 10. Call is serialNo.


# 4. Using the vector from step 2 above as a guide, create a character vector with elements
# "M" and "F" named gender. Thereafter convert it into a categorical variable i.e. factor
# BONUS: The factor's levels are presented alphabetically by default. Make it
# such that the when you run levels(gender), the first element is "M".


# 5. Create a matrix called randMat with columns in this order: serialNo, firstName
# gender and the one with the random numbers


# 6. Examine the matrix. What do you notice?
# BONUS: Check the type of the matrix and try carrying out arithmetic on the
# 'numerical' data


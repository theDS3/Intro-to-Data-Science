################################################################################
### R BASICS WORKSHOP                                                        ###
### EXERCISE 1: Objects                                                    ###
################################################################################

## OBJECTIVE:
## The objective of this exercise is to become familiar with different types of
## objects in R.

rand.1 <- rnorm(100, mean=5, sd=1.5)
# Creates an object with 100 random values taken from a normal distribution with
# an average of 5 and a standard deviation of 1.5.

## TASK 1: What class of object is this?
## TASK 2: What type of data does it contain?
## TASK 3: What is the length of this object?
## TASK 4: What are the mean and standard deviation of rand.1
## TASK 5: Re-write rand.1 with another set of 100 random values taken from a
## normal distribution with an average of 5 and a standard deviation of 1.5.
## TASK 6: What are the mean and standard deviation of this new version of rand.1.
## is the mean the same as before? Why yes/no?

?as.character
# Opens the help file for function 'as.character'

## TASK 7: Use the function as.character to create a vector named 'rand.2' of
## characters from objects 'rand.1'.

class(rand.2)
mode(rand.2)
length(rand.2)
# Confirms the changes made to the object.

rand.1
rand.2
## When printing these two objects on the screen, pay attention at how
## they look different.

identical(rand.1, rand.2)
## TASK 8: What does the function 'identical' do, and why is this FALSE?
## TASK 9: Use the function 'as.numeric' to create a new object rand.3
## back-transforming rand.2 from text to numbers

class(rand.1)
class(rand.3)
identical(class(rand.1), class(rand.3))
# This confirms the change

identical(rand.1, rand.3)
## TASK 10: Can you figure it out why this is still FALSE? This is a lesson to be
## careful when working with your data.

seq.1 <- 1:5
seq.1
## Creates a vector with the sequence 1, 2, 3, 4, 5.

## TASK 11: We want to create a vector of length 10 that is a random sample of
## numbers from the sequence in 'seq.1'. To do this, we use the function 'sample'.
## The line below, however, has an error. Fix the problem using the help and the
## error the line returns.
sample(x=seq.1, size=10)

## TASK 12: Create an object of name 'rand.3' (over-writing the previously created
## object) that is a character vector of length 300 that is a random sample of
## integers from 1 to 10.

is.numeric(rand.3)
# This should be FALSE.  It tests that the mode of the object is 'numeric',
# meaning that the data it contains are numbers.

is.character(rand.3)
# This should be TRUE.

class(rand.3)
mode(rand.3)
length(rand.3)
# Confirms the class, mode and length of the object you created.

rand.4 <- as.numeric(rand.3)
# Creates a numeric vector transforming the values in 'rand.3'.

## TASK 13: Create a vector rand.5 by applying the function as.factor to rand.4
## TASK 14: What is the class of rand.5?

plot(rand.4, col="lightgreen")
plot(rand.5, col="blue")
# Although in essence both objects have numbers, whether the object is of class
# numeric or class factor determines the way the 'plot' function will handle
# the data.

M.abund <- matrix(rpois(1000, 1)*rpois(1000, 10), ncol=50)
M.abund
## TASK 15: What does the function 'rpois' do? What is this line of code doing?

class(M.abund)
## TASK 16: Without using R, can you predict what the dimensions of this matrix
## will be? What its length will be? Confirm your predictions using the
## functions 'dim' and 'length'.

# Let us suppose that the matrix 'M.abund' is a matrix of abundances of species
# (columns) at various sites (rows). In these matrices, it is useful to have
# names for the rows and the columns. The following line of code creates names
# for the columns that represent different species.

## TASK 17: There is a mistake in the line below, read the error message, find the
## mistake and fix it.
colnames(M.abund) <- paste("sp", 1:ncol("M.abund"), sep="_")
colnames(M.abund)
M.abund

## TASK 18: Can you predict what will be the output of the following line of code?
class(colnames(M.abund))

## TASK 19: Now, write code to give names to the rows (i.e., sites) of the matrix.

M.presence <- M.abund > 0
## You will learn more about these operators, but for now, what this line
## of code is doing is comparing each element of the matrix 'M.abund' to the value
## of 0, and producing a new matrix of identical dimensions. This new matrix is
## filled with TRUE and FALSE values, depending on whether the values in the
## original matrix 'M.abund' are greater than zero or not.

M.presence
## Confirms that the object looks the way it should. Notice that it
## inherits the column and row names from the matrix 'M.abund'.

## TASK 20: What will be the class of this object? What will be its mode?
spp.abund <- colMeans(M.abund)

# The function 'colMeans' calculate the mean values of each column. This produces
# a vector with the mean number of individuals for each species.

## TASK 21: What are the names of the elements in this vector? Where did they come from?

spp.occup <- colSums(M.presence)
# This is a very useful trick: R handles TRUEs like 1s and FALSEs like 0s. So
# making a sum of the columns in the TRUE/FALSE matrix produces a vector that
# counts the number of sites where a species is present.

# Now, let's see if there is a relationship between abundance and occupancy in
# this simulated data.

LM.abund.occup <- lm(spp.abund~spp.occup)

## TASK 22: What does the function 'lm' do?
## TASK 23: What is the class of this object?
## TASK 24: Investigate the structure of this object with the function 'str'.
## TASK 25: Use the function 'summary' on this object to get the results.
## TASK 26: Make a simple scatter-plot that corresponds to this analysis using the
## function plot.

rm(M.abund)
## TASK 28: What is the function rm doing?

sim.matrix <- matrix(rpois(50, 5), nrow=10, ncol=5)
# Creates a matrix of 5 columns and 10 rows, filling it with random values from
# a Poisson distribution with a mean of 5.

rownames(sim.matrix) <- paste("site", 1:nrow(sim.matrix), sep="_")
colnames(sim.matrix) <- paste("sp", 1:ncol(sim.matrix), sep="_")
# Creates names for rows and columns.

letters
# 'letters' is a vector containing the alphabet available in R.

L.vector <- sample(c(letters, LETTERS), 50, replace=TRUE)

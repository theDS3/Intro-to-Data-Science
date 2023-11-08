################################################################################
### R BASICS WORKSHOP                                                        ###
### EXERCISE 2: Data Frame                                                   ###
################################################################################


###Download the file: Pokemon.csv from the workshop website###
# Using the following line of code, open the file "pokemon.csv", 
# and save the data into an object named pokemon

pokemon <- read.csv("Pokemon.csv")

## TASK 1: Without using R, do you know what type of object pokemon is? 

dim(pokemon)
# Gives the dimensions of streb.


## TASK 2: How many variables and how many observations are there in this dataset?
## TASK 3: Get the names of the variables in this dataset.

rownames(pokemon)
# Obtains the names of the rows/observations in the dataset.

## TASK 4: Make a summary of the dataset using the function summary.


pokemon_type1 <- pokemon$Type.1

## TASK 5: What is the class of pokemon_type1? 


## Run the following code, which creates a number of vectors:
V1 <- rnorm(10)
class(V1)

V2 <- rpois(10,  5)
class(V2)

V3 <- sample(letters, 10)
class(V3)

V4 <- sample(c(TRUE, FALSE), 11, replace=TRUE)
class(V4)

## TASK 6: Can you predict why the following will produce an error?
DF <- data.frame(V1, V2, V3, V4)

## produce a data frame with vectors V1 to V4. 


#For a large dataset, we read it from a file.
#Download instructions:
#1) Download ?Pokemon.csv? file 
#2) Save it as ?CSV(comma delimited)?.
#3) In R, type ?getwd()? to check out the working directory and copy the file to that directory.

pokemon = read.csv("Pokemon.csv", header=TRUE)
head(pokemon)
dim(pokemon)
names(pokemon)
summary(pokemon) 
hist(pokemon$Total, col="blue")
boxplot(pokemon$Total)
boxplot(pokemon$Total~pokemon$Type.1)

table(pokemon$Type.1)


##################################################
#Exercise 
#a)	Print out the first 20 rows of the data frame, pokemon.
#b)	Create a new data frame containing only ?name?, ?Type.1?, ?Type.2?, ?Total?
#c) Export to ?csv? file using a command
#write.csv(data frame name, ?csv file name?, row.names=F)
#################################################3



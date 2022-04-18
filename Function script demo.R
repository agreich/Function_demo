####FUNCTION DEMO#####

#Functions! why use?
##reproducible data analysis!
##copy and paste no more than twice!

## 3 parts to functions
###NAME
###ARGUMENTS
###BODY

#function_name <- function(argument1, argument2, argument3){
#Body of function... what you want the function to do!
#}


#Example: create a function that calculates the sum
##example:
my_mean <- function(vector){   #NAME <- function(ARGUMENT)
  mean = sum(vector)/length(vector)  #BODY
  return(mean)
}

fish_length <- floor(runif(30, 300, 500)) #simulate a vector of fish lengths

my_mean(fish_length)
mean(fish_length) #check to make sure my function works



#Let's try something more useful
##von Bertalaffy length at age equation:
####

von_Bert <- function(age, Linf, k, t0) {
  pred.length <- Linf*(1-exp(-k*(age-t0))) #just the equation from lab
  return(pred.length)
}

#a real dataset!
goa <- 



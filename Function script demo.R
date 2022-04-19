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

################################################################
#Example: create a function that calculates the sum
##example:
my_mean <- function(vector){   #NAME <- function(ARGUMENT)
  mean = sum(vector)/length(vector)  #BODY
  return(mean)
}

fish_length <- floor(runif(30, 300, 500)) #simulate a vector of fish lengths

my_mean(fish_length)
mean(fish_length) #check to make sure my function works


##########################################################################
#Let's try something more useful
##von Bertalaffy length at age equation:
####find predicted fish lengths given fish ages, max growth, ect.

von_Bert <- function(age, Linf, k, t0) {
  pred.length <- Linf*(1-exp(-k*(age-t0))) #the von Bertalaffy equation
  return(pred.length)
}


#say I have a pollock dataset with these parameters:
p_Linf <- 700 #max asymptotic length
p_k <- 0.2 #growth coefficient
p_t0 <- 0  #age of fish when fish is length 0
p_age <- runif(30, 0, 17) #simulating fish age vector

p_predicted_L <- von_Bert(age=p_age, Linf=p_Linf, k=p_k, t0=p_t0)
p_predicted_L


#you can easily use this same calcualtion with other data!
##say we want just the male pollock data:
##where Linf is 600 instead of 700
p_male_Linf <- 600

p_male_predicted_L <- von_Bert(age=p_age, Linf=p_male_Linf, k=p_k, t0=p_t0)


##CODE HERE

  
  




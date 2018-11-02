######################################################
#######################EXERCISE 8 ####################
######################################################


#####PROBLEM 1#######
#Using the score-by-score information from this game
#summarized in "UWvMSU_1-22-13.txt" generate a graph
#similar to the one I show above.

#read in data
UWvsMSU = read.table("UWvMSU_1-22-13.txt",header=T,sep = "\t")
head(UWvsMSU)
#add a cumulative score column
UWvsMSU$cummulativescore = 0
#separate out the scores
UW= UWvsMSU[which(UWvsMSU$team == "UW"),]
MSU = UWvsMSU[which(UWvsMSU$team == "MSU"),]
#fill cumullative score columns 
UW$cummulativescore = cumsum(UW$score)
MSU$cummulativescore = cumsum(MSU$score)
#plot UW (black) 
Time = UW$time
Cumm = UW$cummulativescore
plot(Time, Cumm,type = "l")
#plot MSU (blue)
time =MSU$time
cumm =MSU$cummulativescore
lines(time,cumm, col = "blue")


#####PROBLEM 2#######
#Write a game called "guess my number". 
#The computer will generate a random number between 1 and 100. 
#The user types in a number and the computer replies "lower"
#if the random number is lower than the guess, 
#"higher" if the random number is higher, 
#and "correct!" if the guess is correct. 
#The player can continue guessing until they get it right. 
#A couple tips on this one: 
#. take a look at the Input/Output reference I gave you for 
   #how to get input from the user 
#. sample() is a function that allows for a random selection
   #from a vector containing a set of integers 


##Guess My Number Game##
#How to Play: 
#run this to set your random number 1-100 
num = sample(1:100)
#type in your first guess for what you think the random number is and run it
guess = 18
#then test to find out if you got the number correct
if(guess == num){
  print("Correct!")
}else if (guess > num){
  print("Lower")
}else{
  print("Higher")
}
#if correct, then you win! 
#if higher, then you must change your guess value to be higher and run lines 50-58 again 
#if lower, then you must change your guess value to be lower and run lines 50-58 again 
#keep playing until you win!!! 

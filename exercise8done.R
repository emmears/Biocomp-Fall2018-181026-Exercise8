######################################################
#######################EXERCISE 8 ####################
######################################################


#####PROBLEM 1#######
#Using the score-by-score information from this game
#summarized in "UWvMSU_1-22-13.txt" generate a graph
#similar to the one I show above.

UWvsMSU = read.table("UWvMSU_1-22-13.txt",header=T,)
head(UWvsMSU)
UW= UWvsMSU[which(UWvsMSU$team == "UW"),]
for (i in UW){
  cumm = UW$score[i]+UW$score[i-1]
  }
return(cumm)
plot(UW$time,UW$score, type = "l")

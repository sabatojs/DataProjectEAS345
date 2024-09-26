# in-class activity
# September 17

# define the data.frame
Grades <- data.frame( 
  Assesment = c("homework","test","quiz","lab","attendance"), 
  Duration = c(5,1,0.1667,3,1),
  Weight = c(1,2,0.25,0.5,0.25)
  )

# add the new column
Grades$InPerson <- c(FALSE,TRUE,TRUE,FALSE,TRUE)
print(Grades)

# add the new row
# define a temporary new data.frame
tempdf <- data.frame("internship",10,1.5,FALSE)
# bind the column names as in "Grades"
names(tempdf) <- names(Grades)
# bind the new row and put it back in "Grades"
Grades <- rbind(Grades,tempdf)
print(Grades)

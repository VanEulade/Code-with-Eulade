#       Null Hypothesis: The median difference between pairs of observations is zero
#  Alternate Hypothesis: The median difference between pairs of observations is not zero
#
#    Alpha = 0.05

movieRating <- read.csv(file = "95_Data_File.csv", header = TRUE, sep = ",")
print(movieRating)

#Testing For Normality 

shapiro.test(movieRating$Male)     # p > 0.05, data are normal
shapiro.test(movieRating$Female)   # p < 0.05, data are not normal

# Perform Mann-Whitney Test using "wilcox.test()" function
wilcox.test(movieRating$Male, movieRating$Female, paired =  FALSE)
data:  movieRating$Male and movieRating$Female
W = 255.5, p-value = 0.1368
alternative hypothesis: true location shift is not equal to 0
Conclusion: We failed to reject null Hypothesis 

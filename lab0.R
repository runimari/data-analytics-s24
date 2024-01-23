# Read in CSV file
# Skip first line so header is not first line of dataframe
# Read in '..' as NA
data1 <- read.csv(file.choose(), header=T, skip=1, na.strings = c(".."))

# Cleanup: remove rows where country is empty
data1 <- data1[data1$Country != "", ]

#Print CSV file
data1

# Exploring the distribution
summary(data1$EPI)
boxplot(data1$EPI, na.rm=TRUE)
fivenum(data1$EPI)

# Binning
hist(data1$EPI, xlab='E')
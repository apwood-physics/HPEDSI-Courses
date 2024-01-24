
library(xlsx)
write.xlsx(mydata, "../mydata.xlsx", sheetName = "Sheet1", col.names = TRUE, row.names = TRUE)



remove.packages('rlang')
install.packages('rlang')


x1 = "Hello"
class(x1)

a <- c(1,4,6,NA)
a
class(a)


is.na(a)

which(is.na(a))

which(c(FALSE, FALSE, FALSE, TRUE))

e <- 1:20
e

b <- seq(1,20)
b

#are the results of these two methods equivalent

e  <-1:100
e1 <-seq(1,100)

e1[3]=9
e1 == e

# you can also create vectors of strings
dfftg <- c("one", "two", "three")
dfftg

dfftg[2]

dfftg[3]

dfftg2 = list("one", "two", "three")
dfftg2

dfftg2[1]

?list

head (cars, 3)

class(cars)

require(graphics)
#cars dataset provided by R 
# create a plotting structure
pts <- list(x = cars[,1], y = cars[,2])
plot(pts)


factor("Hello")

?factor

c("a", "b", "c", "b", "c", "b", "a", "c", "c")

a1 =factor(c("a", "b", "c", "b", "c", "b", "a", "c", "c"))
a1

a2 = factor(a1,labels = c(1,2,3))
a2

gender = c('Female','Male','Female')
class(gender)

?as.factor


g1 = as.factor(gender)
class(g1)

g1 = factor(g1,levels = c('Female','Male'),labels = c(1,2))
g1

levels(a2)

as.character(2016)

as.numeric(TRUE)

as.numeric("c")

as.integer(99)

y1= c("a", "b", "c", "b", "c", "b", "a", "c", "c")
as.factor(y1)

as.logical(1)

??lubridate
install.packages("lubridate")
library(lubridate)

ymd("2015-08-25")

ymd("2015 August 25")

?ymd

mdy("August   25, 2015")
date1 =hms("13.33.09")
date1

y <- ymd_hms("2010-03-14 02:05:05 UTC")
date1 = force_tz(y,'"America/New_York')
date1
?force_tz



install.packages('lubridate')
library(lubridate)

dob = c("9 June 2022")
class(dob)
mydate = dmy(dob)
mydate


a1 <- 4
2 -> a2
a3 = c(1:20)
a3

a4 = c(4,5,60)
a4 %in% a3

a6 = c('a',5,"67",TRUE)



as.Date(mydate)
?as.Date

a3 = 1:5
 a4 = 3 %in% a3

v = c(2,4,8)
t = c(2,2,3)


v%%t

v1 = c(3,1,TRUE)
class(v1)
typeof(v1)

v2 = c(3,1,TRUE,2+3i) 
class(v2)
v3 = c(3,1,TRUE,2+3i)

v



c(1,2,5.3,6,-2,4) # numeric vector

c("one","two","three") # character vector

c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector

?matrix
 

m1=matrix(1:20, nrow=4, ncol=5) #create a matrix of 4columns and 5 rows
m1

 matrix(1:20, 4, 5)

 matrix(1:20, 4, 5, byrow =TRUE)

 data1 <- c(4, 9, 2, 3, 5, 7, 8, 1, 6) 
 magicmatrix <- matrix(data = data1,nrow=3,ncol=3,byrow=TRUE) 
 magicmatrix
 
 data2 = c(1,0,0,0,1,0,0,0,1)
 id_matrix1 = matrix(data=data2, nrow = 3, ncol= 3, byrow = TRUE)
 id_matrix1
 
 
 
a = array(c('green','yellow'),dim=c(3,3,3))
a







?matrix
 d <- c(1,2,3,4)
 e <- c("red", "white", "red", NA)
 f <- c(TRUE,TRUE,TRUE,FALSE)
 mydata1 = matrix(c(d,e,f),nrow = 3, ncol= 3, byrow = TRUE, dimnames = list(d1))
 mydata1
 
 d1 = c('R1','R2','R3')
 class(mydata1)
 
 
?data.frame
 
 mydata4 <- data.frame(d,e,f)
 mydata4
 names(mydata4) <- c("ID","Color","Passed") # variable names

mydata4

cells <- c(1,26,24,68)
cells

rnames <- c("R1", 2)
rnames

cnames <- c("C1", "C2")
cnames

matrix(cells, nrow=2, ncol=2,
dimnames= c(rnames, cnames))

matrix(cells, nrow=2, ncol=2, byrow=TRUE,
dimnames=list(rnames, cnames))

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
data.frame(d,e,f)
mydata4 <- data.frame(d,e,f)
mydata4

?data.frame

mydata

mydata[1,2]

class(mydata4)
class(mydata4)

class(mydata4$Color)

mydata_version2 <- data.frame(d,e,f, stringsAsFactors = TRUE)
mydata_version2 
data.frame(mydata_version2$e)[1,2]


myda
mydata_version2[1,2]

data.frame(d,e,f, stringsAsFactors = F)[2,2]

data.frame(d,e,f, stringsAsFactors = T)[2,2]

data.frame(d,e,f, stringsAsFactors = T)[4,2]


c1 = rep(1,10)
c1
c2 = seq(1,10)
c2
L3 = LETTERS[1:3]
L3
c3 = sample(L3,10,replace = TRUE)
c3

#fac = sample(c('A','B','C'), 10, replace=TRUE)

data = data.frame(c1,c2,c3,stringsAsFactors = TRUE)
data

class(data)


?LETTERS
?sample

c(0.5,0.1,0.2)
?rep
rep(1, 10)




c('Heads', 'Tails',
'Edge', 'Blows Up')

bag_of_words=c('Heads', 'Tails','Edge', 'Blows Up')
x <- sample(bag_of_words, 5, replace=T,
prob=c(.45, .45, .05, .05))

x

x <- sample(bag_of_words, 3, replace= T,
prob=c(.05, .45, .05, .45))
set.seed(567)
x

#Ensure the le
x <- sample(bag_of_words, 5, replace=F,
prob=c(.45, .45, .05, .05))
set.seed(567)
x

x <- sample(c('Heads', 'Tails',
'Edge', 'Blows Up'), 5, replace=T,
prob=c(.45, .45, .05, .05))
x


?rbinom
?rnorm


x3 <- rnorm(50, mean=0, sd=10)
x3

class(x3)

head(x3)

length(x3)

?mean
 

 
mean(x3)

sd(x3)


print(set.seed(Sys.time()))

set.seed()
Sys.time()


x3 <- rnorm(50, mean=50, sd=10)
x3


mydata

str(mydata)

summary(mydata)

install.packages('tidyverse')
library(tibble)

tibble(
x = 1:5,
y = 1, z=x^2+y
)


data6 = data.frame(abc = c(1,5) , xyz = c("a","b"))
data6
x = data6$abc
x
x2 = data6$xyz

y = data6[1, c("abc","xyz")]
y

data7 = as_tibble(data6)
data7

# A popular dataset
?iris

iris

class(iris)

iris[,c(1,5)]
View(iris[,c(1,5)])
View(iris)

x1=as_tibble(iris)
view(x1)

getwd()

write.table(iris,"iris.txt")


getwd()

system("mkdir -p ~/Downloads/newFile")



setwd("~/Downloads")

write.table(iris,"iris.txt")

setwd('/home/jebaluno/R-class')

system (command = "cat mydata.txt",intern = TRUE)

mydata <- read.table("mydata.txt")

mydata

class(mydata)

mydata1 <- read.csv("mydata.csv")

mydata1


library(readr)
?read_csv
??`readr-package`
mydata <- read_csv("mydata.csv")
mydata

mydata2 <- read.table("mydata.txt")
mydata2

mydata <- read_csv("mydata.csv", col_names = FALSE)

as_data_frame(mydata)

df <- tibble(
  x = runif(50),
  y = rnorm(50)
)

df

df1 <- data.frame(
  x = runif(50),
  y = rnorm(50)
)
df1

data<-
read.csv("household_power_consumption.txt",
sep=";", header = FALSE,
stringsAsFactors=FALSE, na.strings = "?",
skip=66637 , nrows=2880)

view(data)


21/12/2006;11:23:00;?;?;?;?;?;?;
21/12/2006;11:24:00;?;?;?;?;?;?;
data<-
read.csv("household_power_consumption.txt",
sep=";", header = FALSE,
stringsAsFactors=FALSE, na.strings = "?",
skip=66637 , nrows=2880)

head(data)

?read.csv

data2<-read.csv("household_power_consumption.txt") #runs very slow

data2<-read.csv("household_power_consumption.txt", sep = ";")


head(data2)

data2[1,]

data2[1:3,]

library(readxl)
write

mydata <- read_xlsx("mydata.xlsx")
head(mydata)

write.xls(mydata, "mydata.xls")

library(writexl)

library(xlsx) ## if it fails then install package

install.packages("xlsx")

mydata<-read.csv("mydata.csv")
mydata

mydata2<-read_xlsx("mydata.xlsx")
mydata2

library(xlsx)

write.xlsx(mydata, "mydata.xlsx",row.names = F)

?mtcars
data("mtcars")
?data()

head(mtcars,10)
tail(mtcars,10)

str(mtcars)

names(mtcars)

summary(mtcars)

data3<-
read.csv("household_power_consumption.txt",
sep=";", header = FALSE,
stringsAsFactors=FALSE, na.strings = "?")

?is.na

x=NA

is.na(x)

x=c(1:4,NA,NA, 99:93) # what about a vector
x

sum(is.na(x))

as.numeric(TRUE)

head(is.na(data3))

library(readxl)
mydata=read_xlsx("mydata.xlsx")

mydata

mydata[,1]==678

mydata[,3][mydata[,3]==678] <- NA

mydata 

x=c(1:4,NA, 99:95, NA, 4:2) # what about a vector
x

sum(is.na(x)) # how many missing

sum(is.na(data3))

which(is.na(x)) # where is the missing data

head( which(is.na(data3)))

x=c(1:4,NA, 99:95, NA, 4:2) # what about a vector
mean(x) # Returns NA

mean(x,na.rm = T)

# list rows of data that have missing values

complete.cases((mydata),)

mydata[!complete.cases(mydata),]  

head(data3[!complete.cases(data3),])

newdata <- na.omit(mydata) 
newdata

# Clean up Data set africa

data(africa)

africa


which(is.na(africa))

head(africa[!complete.cases(africa),])

#install.packages("tidyverse")
library(nycflights13)
library(tidyverse)
library(dplyr)


library(tidyverse)
?flights
data("flights")
view(flights)
head(flights,10)

class(flights)
flights = as_data_frame('flights')

#filter rows
filter(flights, dep_time == 517, carrier == 'UA')

jan1 <- filter(flights, month == 1, day == 1)
jan1

filter(flights, month = 1)

# get November and December
filter(flights, month %in% c(11, 12,10))

nov_dec <- filter(flights, month %in% c(11, 12))
view(nov_dec)
# To select between a range of months, you can use between
summer <- filter(flights, between(distance,200,300))
summer
?between

view(summer)


f1 = filter(flights,(arr_delay>= 2) &(between(distance,200,300)))
view(f1)

f2 = filter(flights,(dest =='IAH')| (dest =="HOU"))
view(f2)

arrange(flights, dep_time, desc(month),desc(day))



df <- tibble(x = c(5, 2, NA,9))

df

arrange(df, desc(x))

arrange(flights, desc(arr_delay))

select(flights, year,month, day)

#Select all columns between year and day (inclusive)

view(select(flights, year:arr_time))

# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))

flights_sml <- select(flights, 
    year:day, 
    ends_with("delay"), 
    distance, 
    air_time
  )
names(flights_sml)

flights_sml <- select(flights, 
    year:day, 
    ends_with("delay"), 
    distance, 
    air_time
  )


x1 = mutate(flights_sml,
    flight_gain = arr_delay - dep_delay,
    speed = distance / air_time * 60,
       arr_delay_mean = mean(arr_delay, na.rm = T)
 )  

view(x1)
# Two fields created gain & speed

mutate(flights_sml,
  gain = arr_delay - dep_delay,
  hours = air_time / 60,
  gain_per_hour = gain / hours
)
# Three fields created gain, hours, gain_per_hour

transmute(flights,
  gain = arr_delay - dep_delay,
  hours = air_time / 60,
  gain_per_hour = gain / hours
)
#only the new fields

# Collapse a data frame into single row

summarise(flights, sd_delay = sd(dep_delay, na.rm = TRUE),mean_delay = mean(dep_delay, na.rm = TRUE))
#notice a new variable (delay) is created as well to store that summary
mtcars
by_cyl <- mtcars %>% group_by(cyl)



?group_by
by_day <- group_by(flights, filter(month== 12),day )
by_day

by_day = ungroup(flights)

summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))
#Combine using “the pipe”  %>%
#Example: There are three steps to prepare this data:
#1.  Group flights by destination.
#2.  Summarize to compute distance, average delay, and number of flights.
#3.  Filter to remove noisy points and Honolulu airport, which is almost twice as far away as the next closest airport.

view(flights)

delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 1, dest != "LEX")
delays






delays = delays %>%ungroup()
flights = flights %>% ungroup()
#more function to summarize 
count()
mean() median()
x = c(1,4,6,8)
sd(x); IQR(x); mad(x)
#Measures of rank:
min(x); quantile(x, 0.25);max(x)
Measures of position: first(x), nth(x, 2), last(x)
?ungroup()



#mt_cyl  <- mtcars %>%
          #group_by(cyl,carb)

#mt_cyl


un_data  <- mtcars %>% ungroup()
un_data

not_cancelled <- flights %>% 
  group_by(year, month, day) %>% 
  summarise(
    avg_delay1 = mean(arr_delay, na.rm = T),
    avg_delay2 = mean(arr_delay[arr_delay > 0],na.rm = T) 
  )

not_cancelled

#Grouping by multiple variables
 

daily <- group_by(flights, year, month, day)

per_day   <- summarise(daily, flights = n())

new_subset  <-  daily %>%
           summarize(per_day  = n(),
                     per_month = sum(flights))

new_subset
per_month <- summarise(per_day, flights = sum(flights))
#per_year  <- summarise(per_month, flights = sum(flights))

daily <- group_by(flights, year, month, day)

new_subset  <-  daily %>%
           summarize(per_day_flights = n(),
                     per_month = sum(flights))

per_day

per_month

per_year

# Exercise repeat with these functions sd(x), IQR(), mad(x))

#Ungrouping
daily %>% 
  ungroup() %>%             # no longer grouped by date
  summarise(flights = n())  # all flights

x=data.frame(matrix(rnorm(25), 5,5))
x

x[,4] # 4th column of matrix/data frame


x[3,] # 3rd row of matrix/data frame 

x[2:4,1:3] # rows 2,3,4 of columns 1,2,3

data(state)
mystates <- data.frame(state.x77) 
head(mystates)
??state.x77
mystates$Income
mystates[c('Income','Area')]

mystates[1:5,1:2]


mystates[,'Area']  


#mystates
a  <- max(mystates$Area)
a

mystates[mystates$Area == 566432]

largest = filter( mystates, mystates$Area == 566432)



state.region == "South"

unique(state.region)



head(state.region)

mysubset = subset(mystates, state.region == "South" | state.region == 'West')
mysubset


subset_area_large  <-  mystates %>%
  subset(state.region == "South" | state.region == 'West')


mysubset = mystates[1:2, -5]
head(mysubset)

mysubset = mystates[, select("Population", "Income", "Frost", "Area")]
head(mysubset)

mys

?sample

starts_with()
ends_with()

mysubset = mystates[grep("M.*$", rownames(mystates)) ]
mysubset





 df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

df

# Extract by name
df$x

df[["x"]]

# Extract by position
df[[1]]
#important: make sure you know what you want to merge, check data types, length of variables etc.
#Example (we first create the data for the example)
mydat <- data.frame(id = factor(1:12), group = factor(rep(1:2, e = 3))) 
mydat



#rep(1:4 , e =2)
set.seed(10000000)
x = rnorm(12)
y = sample(70:100, 12)
x2 = rnorm(12) 

#add y via extract operator
mydat$group2 = y
mydat

df <- data.frame(id = mydat$id, y)
df

?merge
mydat3 <- merge(mydat, df, by = intersect(names(mydat),names(df)), sort = F) #using merge
mydat3




# add columns
df <- data.frame(id = factor(13:24), group = factor(rep(1:2, e = 3))) 
df$col2 = factor(rep(1:2, e = 3))
df

mydat21 <- rbind(mydat,df)
mydat21

#mydat

#mergeing by columns
mydat3 <- cbind(mydat, x)
mydat3

?rbind


> x = rnorm(12)
> y = sample(70:100, 12)
> x2 = rnorm(12) 
add columns
> mydat$grade = y #add y via extract operator
> df <- data.frame(id = mydat$id, y)
> mydat2 <- merge(mydat, df, by = "id", sort = F) #using merge     > mydat3 <- cbind(mydat, x) #using cbind 
add rows 
> df <- data.frame(id = factor(13:24), group = factor(rep(1:2, e = 3)), grade = sample(y)) 
> mydat2 <- rbind(mydat, df) 

mydata <- data.frame(id = factor(rep(1:6, e = 2)), time = factor(rep(1:2, 6)), y) 

mydata

mydataWide <- reshape(mydata,  v.names = "y", direction = "wide") 
mydataWide

?reshape

mydataLong <- reshape(mydataWide, direction = "long") 
mydataLong




savehistory("history_of_commands_session2.txt")


mystate  <- data.frmame(x.777)

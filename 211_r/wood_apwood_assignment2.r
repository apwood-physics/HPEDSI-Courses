library(tidyverse)

# 1) What function would you use to read a file
# where fields were separated with “|”?

"read.table(myfile, sep = '|')"

# 2) Identify what is wrong with each of the following inline CSV files.
# What happens when you run the code?

print(read_csv("a,b\n1,2,3\n4,5,6"))
# This CSV has non-uniform structure. The header line is missing a third column
# the remaining rows have 3 cols. This builds a 2x2 data frame where
# '2,3' and '5,6' have been interpreted as '23' and '56'.

print(read_csv("a,b,c\n1,2\n1,2,3,4"))
# Similar issue, here. 2nd row only has 2 columns, 3rd row has 4.
# This builds a 2x3 data frame where row 1, col 'c' has a NA value,
# and row 2 col 'c' is reinterpreted as '34'

print(read_csv("a,b\n\"1"))
# Randomly placed \" causes the first row to not be recognized.
# So, this is essentially an empty data frame with colums 'a'
# and 'b' without any data.


print(read_csv("a,b\n1,2\na,b"))
# This one looks OK the only caveat being that the column data types
# are interpreted as 'chr' since they contain both numeric and character values.

print(read_csv("a;b\n1;3"))

# This is the the wrong function to use for a csv delimited with ';'
# Instead, read_csv2() should be used

# 3) Sometimes, strings in a CSV file contain commas. To prevent them from
# causing problems, they need to be surrounded by a quoting character,
# like " or '. By default, the read_csv() function from the tidyverse package
# assumes that the quoting character will be ". What argument to read_csv() do
# you need to specify to read the following text into a data frame?
# "x,y\n1, 'a,b'"

print(read_csv("x,y\n1,'a,b'", quote = "\'"))

library(tidyverse)

"1) What function would you use to read a file where fields were separated with “|”?"
"read.table(myfile, sep = '|')"

read_csv("a,b\n1,2,3\n4,5,6")
"This CSV has non-uniform structure. 1st row only has 2 columns, the remaining rows have 3 cols.
This builds a 2x2 data frame."

read_csv("a,b,c\n1,2\n1,2,3,4")
"Similar issue, here. 2st row only has 2 columns, 3rd row has 4.
This builds a 2x3 data frame."

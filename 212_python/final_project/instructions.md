What to submit

Send your source code properly documented, with comments, doc-stings,  PeopleSoft ID, in a .ipynb file named: FirstName_LastName_assignmentNumber.ipynb to the course website. Your source code must run without syntax errors in order to receive a passing grade for the project. Make sure you add docstrings comments in your source code that describe what the program is supposed to do. Before submitting your code, make sure you test it with different input values to ensure it works correctly.

1) Kids Game

Develop a simple game that teaches 3 to 4rd-grade students how to perform division with integer numbers. Your function game() will take an integer n as input and then ask n  division questions. The numbers to be divided should be chosen randomly such that 

a) the divisor should be in the range [1, 9] (i.e.,1 to 9 inclusive). 

b) the dividend should be in the range [9, 1000] (i.e.,9 to 1000 inclusive). The user will enter the answer for both the quotient and remainder when prompted. Your function should print 'Correct' for correct answers and 'Incorrect' for incorrect answers. After n questions, your function should print the number of correct answers.

```
game(3)

100 / 2 =

Enter the Quotient: 50

Enter the Remainder: 0

Correct.

30 / 9 =

Enter the Quotient: 4

Enter the Remainder: 0

Incorrect.

50  / 7 =

Enter the Quotient: 7

Enter the Remainder:  1

Correct.

You got 2 correct answers out of 3
```

2a)

Suppose you want to find the slope between two points (a, f(a)) and (b, f(b)) where f(x)  =  x^2+ 3x –7.

Enter the one-line lambda function f(x) = x^2+ 3x –7.

Create a function g(a, b) that will find the slope between two points x = a and x = b on f(x).

    Use g to find the slope between x =  5 and x = 13
    Use g to find the slope between x = -4 and x = 6


2b). Write a function info(a, b) that takes two points  (a, f(a)) and (b, f(b)) where f(x)  = x^2 + 5x - 7; and returns three things about the segment from the origin to the point:

    Its slope
    Its midpoint

    Its length ( Euclidean distance)


3)Integrate a function by one trapezoid

An approximation to the integral of a function f(x) over an interval [a, b] can be found by first approximating f(x) by the straight line that goes through the endpoints (a, f(a)) and (b, f(b)), and then finding the area under the straight line (which is the area of a trapezoid). The resulting formula becomes 

https://wikimedia.org/api/rest_v1/media/math/render/svg/ff1e6d438c8e663ed8ab18d19b011371c24b3ac7

 https://en.wikipedia.org/wiki/Trapezoidal_rule

(3a) Write a function trapezint1(f, a, b) that returns this approximation to the integral. The argument f is a Python implementation f(x) of the mathematical function f(x).

(3b)  Write python code showing how you would do a line plot of the domain b  (for example b >=0  and b <10) vs trapezint1 (f, a, b), assume a=0, and function f is the cosine function or cos().


4) Detecting Trends Language on Twitter

This subproject will allow you to practice manipulating dictionaries and files in your python scripts. The goal is to keep track of trendy topics in a sample of Twitter data. You will need two files posted on the course website: twitter_data.txt.

WARNING: Some of the tweets in the sample file actually do contain swear words.

4a). Detecting Topic Trends on Twitter

One of Twitter's services is the ability to track the most popular topics. For this part of the assignment, you will do something similar. Your task is to keep track of the issues identified by users with the hashtag symbol ‘#’. You will also need to count the frequency of the hashtags you found and provide a ranking of hashtags based on their frequency. The output of your script should be one file, named top_hashtags.txt, with the N most popular hashtags, where N is a parameter to your function. For example, assume this is the content of your twitter_data.txt file:

      #lebron is the best athlete of our generation

      ML 5 Demos! Lots of great stuff to come! Yes, I&#39;m excited. :) http://htmlfive.appspot.com #io2009 #googleio

      At GWT fireside chat #googleio

      @khalid0456 No, Lebron is the best #lebron

 If N is set to 2, then your script should generate a file top_hashtags.txt with the following content (note that in the case of ties the order doesn’t matter):

      #googleio 2

      #lebron 2


5. Write a python program or function that does:

5a) loads the Stockholm temperature dataset via appropriate NumPy functions

5b) generate NumPy array of the average daily temperature  (i.e. morning + afternoon + evening )/3 )  in Fahrenheit temperature scale, note temperature was initially in Celsius scale.

5c) generate a series plot of the average daily temperature for the 19th century in Fahrenheit vs time. Label the title, legend, and axes accordingly.

5d) generate a histogram of the average daily temperature for the 18th century in Fahrenheit to reflect the temperature distribution. Label the title, legend, and axes accordingly.

5e) split the data into three subgroups based on timeline/periods (i.e. 18th century, 19th century, and 20th century), and save the separated data sets to disk using NumPy's savecompressed. Hint label the 18th century as a 19th century as b, and 20th century as c.

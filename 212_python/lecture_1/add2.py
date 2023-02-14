import sys

if len(sys.argv) < 3:
    print("Please provide 2 numbers")
else:
    a = sys.argv[1]
    b = sys.argv[2]

    print("sum of", a, "and", b, "is", float(a) + float(b))


import sys


def is_palindrome():
    try:
        word = sys.argv[1]
        print(word == word[::-1])
    except IndexError:
        print("Please provide a string argument.")


if __name__ == "__main__":
    is_palindrome()

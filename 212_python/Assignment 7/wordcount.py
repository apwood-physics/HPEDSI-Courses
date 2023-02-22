
import sys


def count_occurences(iterable):
    """Function which counts frequency of items in an iterable obj, returns a tuple of the items and their counts."""

    totals = {obj: 0 for obj in set(iterable)}

    for obj in iterable:
        totals[obj] += 1

    return sorted(totals.items(), key=lambda x: x[1], reverse=True)


def remove_chars(string):
    """Function responsible for identifying various characters in a string, removing them, and returns the modified string"""

    punc = r"""()?!"',#*.-;:"""
    for char in string:
        if char in punc:
            string = string.replace(char, " ")
    return string


def process_lines(lines):
    """This function iterates over a iterable of strings, stripping punctuation and other characters,
    and returns a flat list of individual words.
    """

    splits = map(lambda line: remove_chars(line).split(), lines)
    words = [word.lower() for line in splits for word in line if len(word) > 2]
    return words


def wordcount():
    """This program reads in a text file, counts the occurences of each word, and prints it to the terminal.
    Anthony Wood (PeopleSoftID 1168636)
    """

    try:
        file_name = sys.argv[1]
    except IndexError:
        print("Please provide a file name as an additional command line argument.")
        return

    with open(file_name) as f:
        words = process_lines(f)

    totals = count_occurences(words)

    for word, total in totals:
        print(f"{word}: {total}")


if __name__ == "__main__":
    wordcount()

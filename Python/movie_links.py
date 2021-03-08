import sys
import re
from extract_links import extract
link = input("Give the main URL : ")
pattern = input("Any filter : ")
print("{} with filter - {}".format(link,pattern), end="\n\n\n")
orig_stdout = sys.stdout
with open("mainlinks.txt", "w") as f:
    sys.stdout = f
    extract(link)
    sys.stdout = orig_stdout

file = open('mainlinks.txt', 'r')
if pattern:
    for line in file:
        if re.search(pattern, line):
            print(line, end="")
else:
    for line in file:
        print(line, end="")
file.close()


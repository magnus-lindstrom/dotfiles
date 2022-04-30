import json
import python_libs.pylib1 as pylib

print("hello")

bla = [1, 2, 3]
# json.something()

for a in bla:
    print(a)
    for b in bla:
        print(b)


pylib.pylib1_function()

foo = pylib.pylib1_class()
foo.a = "bloo"
print(foo.a)

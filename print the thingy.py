import random


for i in range(20):
    print("dw", end=" ")
    for j in range(20):
        if random.randint(0, 20) == 16:
            print("0dh", end= ", ")
            continue
        print("0ff00h", end=", ")
    print()
import random


for i in range(20):
    print("dw", end=" ")
    for j in range(20):
        if random.randint(0, 40) == 38:
            print("0f000h", end= ", ")
            continue
        print("0ff00h", end=" " if j==19 else ", ")
    print()
from random import randint
global num
def play():
    while True:
        while int(input("Guess the number: ")) != num:
            print("you got it wrong! try again")
        print("you got it right!")
        if input("play again? (y/n) > ") != "y":
            break
        else:
            num = randint(0, 20)
def help2():
    print("in this game you need to guess the correct number. \nthe computer will think up a number and you have to type in your guess. \nthe computer will then check whether you have won by guesssing the right number or not. \nif not, you can guess again.")
num = randint(0, 20)
print("Welcome to number guessing game\n\n1. play\n2. help")
if int(input("1, 2? > ")) == 1:
    play()
else:
    help2()
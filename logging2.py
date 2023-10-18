'''for coloring the level text'''
import termcolor
color = termcolor.colored
def info(msg):
    print(color("info: ", "blue", attrs=['bold']), end='')
    print(msg)

def warn(msg):
    print(color("warning: ", "yellow", attrs=['bold']), end='')
    print(msg)

def error(msg):
    print(color("error: ", "red", attrs=['bold']), end='')
    print(msg)

def errorq(msg):
    print(color("critical: ", "red"), end='')
    print(msg)

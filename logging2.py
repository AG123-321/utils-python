'''for coloring the level text'''
import termcolor
color = termcolor.colored
def info(msg):
    print(color("INFO: ", "blue", attrs=['bold']), end='')
    print(msg)

def warn(msg):
    print(color("WARNING: ", "yellow", attrs=['bold']), end='')
    print(msg)

def error(msg):
    print(color("ERROR: ", "red", attrs=['bold']), end='')
    print(msg)

def errorq(msg):
    print(color("CRITICAL: ", "red"), end='')
    print(msg)

module Math exposing (..)

import Run exposing (run)


r = run "2+2"

prog1 = """

a = 100
b = 100

a && b


"""

r2 = run "2 * 4 "
r3 = run "if True && False then 1 else 2"

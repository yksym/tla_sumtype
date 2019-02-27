------------------- MODULE SumType --------------------
EXTENDS Naturals, Sequences, TLC
------------------------------------------------------

Option(S) == {<<"none">>} \union ({"some"} \X S)
none == <<"none">>
toSome(x) == <<"some", x>>
isSome(x) == x[1] = "some"
isNone(x) == x[1] = "none"
fromSome(x) == x[2]

Either(T1, T2) == ({"left"} \X T1) \union ({"right"} \X T2)

toLeft(x)  == <<"left", x>>
toRight(x) == <<"right", x>>
fromLeft(x) == x[2]
fromRight(x) == x[2]
isLeft(x)  == x[1] = "left"
isRight(x)  == x[1] = "right"

=======================================================
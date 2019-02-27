------------------- MODULE SumType --------------------
EXTENDS Naturals, Sequences, TLC
------------------------------------------------------

Option(S) == {x \in Seq(S) : Len(x) <= 1}
none == <<"none">>
toSome(x) == <<"some", x>>
isSome(x) == x[0] = "some"
isNone(x) == x[0] = "none"
fromSome(x) == x[1]

Either(T1, T2) == ({"left"} \X T1) \union ({"right"} \X T2)

toLeft(x)  == <<"left", x>>
toRight(x) == <<"right", x>>
fromLeft(x) == x[1]
fromRight(x) == x[1]
isLeft(x)  == x[0] = "left"
isRight(x)  == x[0] = "right"

=======================================================
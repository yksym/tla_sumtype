------------------- MODULE SumType --------------------
EXTENDS Naturals, Sequences, TLC
------------------------------------------------------

Option(S) == {x \in Seq(S) : Len(x) <= 1}
none == << >>
some(x) == <<x>>
isSome(x) == x /= << >>
isNone(x) == x = << >>
fromSome(x) == x[1]

Either(T1, T2) == {x \in [left : Option(T1), right : Option(T2)] :
  /\ ~(x.left = none /\ x.right = none)
  /\ ~(x.left /= none /\ x.right /= none)
}

toLeft(x)  == [left |-> some(x), right |-> none]
toRight(x) == [left |-> none, right |-> some(x)]
fromLeft(x) == x.left
fromRight(x) == x.right
isLeft(x)  == isSome(x.left)
isRight(x)  == isSome(x.right)

=======================================================
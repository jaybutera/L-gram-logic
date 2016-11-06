##L Systems in ASP

### iter_seq(L,LST,N)
    Takes a list L as a seed and generates N apps of the L system.
    Recursively calls gen_l_seq. Result stored in LST.

### isSimilar(LST, LST2)
    Takes 2 lists and will return true if they are apart of the same tree.
    LST should be the larger of the two lists.

#### gen_l_seq(L2,ACC,ACC2)
    Takes a list L2 as a seed and generates a final sequence in ACC2.

```
?- gen_l_seq([1],[],LIST).
LIST = [2, 4, 5, 5, 1, 6, 3, 1, 6, 3, 2, 5, 3, 2, 1, 6, 4, 1]

?- isSimiar([2,4,5,5,1,6,3,`,6,3,2,5,3,2,1,6,4,1],[1]).
true

?- iter_seq([1], X, 1).
X = [2, 4, 5, 5, 1, 6, 3, 1, 6, 3, 2, 5, 3, 2, 1, 6, 4, 1]
```


##L Systems in ASP

- gen_l_seq(L2,ACC,ACC2)
    | Takes a list L2 as a seed and generates a final sequence in ACC2.

- iter_seq(L,LST,N)
    | Takes a list L as a seed and generates N apps of the L system. Result
    | stored in LST.

```
?- iter_seq([1], X, 1).
X = [2, 4, 5, 5, 1, 6, 3, 1, 6, 3, 2, 5, 3, 2, 1, 6, 4, 1]
```

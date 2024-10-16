successor(a, b).
successor(a, c).
successor(b, d).
successor(b, d).
successor(b, e).
successor(c, f).
successor(c, g).
leaf(d).
leaf(e).
leaf(f).
leaf(g).

solve(Node, Solution):-
    dfs([], Node, Solution).
dfs(Path, Node, Solution):-
    successor(Node, Node1),
    \+member(Node1, Path),
    dfs([Node|Path], Node1, Solution).
dfs(Path, Node,[Node|Path]):- leaf(Node).

% solve(a, X).

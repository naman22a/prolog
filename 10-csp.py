from itertools import permutations

def solve_cryptarithmetic():
    letters = "SENDMORY"
    for perm in permutations(range(10), len(letters)):
        solution = dict(zip(letters, perm))

        if solution['S'] == 0 or solution['M'] == 0:
            continue

        send = solution['S'] * 1000 + solution['E'] * 100 + solution['N'] * 10 + solution['D']
        more = solution['M'] * 1000 + solution['O'] * 100 + solution['R'] * 10 + solution['E']
        money = solution['M'] * 10000 + solution['O'] * 1000 + solution['N'] * 100 + solution['E'] * 10 + solution['Y']

        if send + more == money:
            return solution, send, more, money

    return None

result = solve_cryptarithmetic()
if result:
    solution, send, more, money = result
    print("Solution found:")
    print(f"SEND = {send}")
    print(f"MORE = {more}")
    print(f"MONEY = {money}")
    print("Mapping:", solution)
else:
    print("No solution found.")

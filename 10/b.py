#! /usr/bin/python3
from numpy import array
from scipy.optimize import LinearConstraint, milp

ans = 0
for l in open("input","r"):
  B = l.split()[1:]
  t = eval('(' + B.pop()[1:-1] + ')')
  A = array([[str(i) in b for b in B] for i in range(len(t))])
  c = array([1]*len(B))
  con = LinearConstraint(A, t, t)
  res = milp(c, constraints=con, integrality=c)
  ans += sum(res.x)
print(ans)

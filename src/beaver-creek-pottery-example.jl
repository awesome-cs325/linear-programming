# Example from LP slides - Beaver Creek Pottery Company example
using JuMP

m = Model()

@defVar(m, x >= 0)
@defVar(m, y >= 0)

addConstraint(m, x + 2y <= 40)
addConstraint(m, 4x + 3y <= 120)

setObjective(m, :Max, 40x + 50y)

print(m)

status = solve(m)

println("Objective value: ", getObjectiveValue(m))
println("bowls = ", getValue(x))
println("mugs = ", getValue(y))

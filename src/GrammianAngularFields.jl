module GrammianAngularFields

# 1. pkg > generate Blabba
# 2. shell > cd Blabba
# 3. pkg > activate .
# 4. import Blabba
# 5. test the different functions
# 6. write more code
# 7. quit julia
# 8. go to 3.

import StatsBase
import PlotlyJS

greet() = print("This is Grammian Angular Fields!")

"""
    normalize(x)

Transforms a univariate array into a 0 mean and unit standard deviation array.
"""
function normalize(x::AbstractVector)
    m = StatsBase.mean(x)
    (x .- m) ./ StatsBase.stdm(x, m)
end

"""
    standardize(x)

Transforms a univariate array into a 0, 1 range.
"""
function standardize(x::AbstractVector)
    (x .- minimum(x)) ./ (maximum(x)-minimum(x))
end

"""
    standardize(x, a, b)

Transforms a univariate array into a a, b range.
"""
function standardize(x::AbstractVector, a::Number, b::Number)
    standardize(x) .* (b-a) .+ a
end

# PlotlyJS.plot(PlotlyJS.heatmap(z=grammify(randn(300))))

"""
    grammify(x)

Turns a univariate 1-D array into a Grammian Angular Field sporting a 2-D matrix shape.

# Examples
```jldoctest
julia> grammify(1:4)
4×4 Array{Float64,2}:
  1.0        0.333333  -0.333333  -1.0     
  0.333333  -0.777778  -1.0       -0.333333
 -0.333333  -1.0       -0.777778   0.333333
 -1.0       -0.333333   0.333333   1.0     
```
"""
function grammify(x::AbstractVector)
    θ = acos.(standardize(x, -1, 1))
    # θ*θ'
    [cos(θ[i]+θ[j]) for i in 1:length(θ), j in 1:length(θ)]
end

"""
    plotgrammian(g)

Plot a grammified univariate array.

# Examples
```jldoctest
julia> plotgrammian(grammify(1:10))
```
"""
plotgrammian(g) = PlotlyJS.plot(PlotlyJS.heatmap(z=g))

end # module

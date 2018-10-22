
"""
    normalize(x)

Transforms a univariate array into a 0 mean and unit standard deviation array.

# Examples

```jldoctest
julia> GrammianAngularFields.normalize(collect(1:5))
5-element Array{Float64,1}:
 -1.2649110640673518
 -0.6324555320336759
  0.0               
  0.6324555320336759
  1.2649110640673518
```
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



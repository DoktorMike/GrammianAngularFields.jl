
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



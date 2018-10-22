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
julia> GrammianAngularFields.plotgrammian(grammify(1:10))
data: [
  "heatmap with fields type and z"
]

layout: "layout with field margin"
```
"""
plotgrammian(g) = PlotlyJS.plot(PlotlyJS.heatmap(z=g))

"""
    plotgrammian2(x)

# Examples
```jldoctest
julia> GrammianAngularFields.plotgrammian2(sin.(1:30))
data: [
  "scatter with fields type, x, xaxis, y, and yaxis",
  "heatmap with fields type, xaxis, yaxis, and z"
]

layout: "layout with fields margin, xaxis1, xaxis2, yaxis1, and yaxis2"
```
"""
function plotgrammian2(x::AbstractVector)
    p1 = PlotlyJS.plot(PlotlyJS.scatter(x=1:length(x), y=x))
    p2 = PlotlyJS.plot(PlotlyJS.heatmap(z=grammify(x)))
    p = [p1 p2]
    p
end

"""
    testme(x)

Test any kind of functionality which may change at any time.
This is indeed the very definition of a random function.

# Examples
```jldoctest
julia> foo = 42
42
```
"""
function testme(x::AbstractVector)
    p1 = PlotlyJS.plot(PlotlyJS.scatter(x=1:length(x), y=x))
    p2 = PlotlyJS.plot(PlotlyJS.heatmap(z=grammify(x)))
    p = [p1 p2]
    p
end



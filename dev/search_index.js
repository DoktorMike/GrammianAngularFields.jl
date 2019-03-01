var documenterSearchIndex = {"docs": [

{
    "location": "#",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.jl Documentation",
    "category": "page",
    "text": ""
},

{
    "location": "#GrammianAngularFields.jl-Documentation-1",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.jl Documentation",
    "category": "section",
    "text": "CurrentModule = GrammianAngularFields\nDocTestSetup = quote\n    using GrammianAngularFields\nend"
},

{
    "location": "#GrammianAngularFields.testme-Tuple{AbstractArray{T,1} where T}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.testme",
    "category": "method",
    "text": "testme(x)\n\nTest any kind of functionality which may change at any time. This is indeed the very definition of a random function.\n\nExamples\n\njulia> foo = 42\n42\n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.grammify-Tuple{AbstractArray{T,1} where T}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.grammify",
    "category": "method",
    "text": "grammify(x)\n\nTurns a univariate 1-D array into a Grammian Angular Field sporting a 2-D matrix shape.\n\nExamples\n\njulia> grammify(1:4)\n4×4 Array{Float64,2}:\n  1.0        0.333333  -0.333333  -1.0     \n  0.333333  -0.777778  -1.0       -0.333333\n -0.333333  -1.0       -0.777778   0.333333\n -1.0       -0.333333   0.333333   1.0     \n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.plotgrammian-Tuple{Any}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.plotgrammian",
    "category": "method",
    "text": "plotgrammian(g)\n\nPlot a grammified univariate array.\n\nExamples\n\njulia> GrammianAngularFields.plotgrammian(grammify(1:10))\ndata: [\n  \"heatmap with fields type and z\"\n]\n\nlayout: \"layout with field margin\"\n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.plotgrammian2-Tuple{AbstractArray{T,1} where T}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.plotgrammian2",
    "category": "method",
    "text": "plotgrammian2(x)\n\nExamples\n\njulia> GrammianAngularFields.plotgrammian2(sin.(1:30))\ndata: [\n  \"scatter with fields type, x, xaxis, y, and yaxis\",\n  \"heatmap with fields type, xaxis, yaxis, and z\"\n]\n\nlayout: \"layout with fields margin, xaxis1, xaxis2, yaxis1, and yaxis2\"\n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.normalize-Tuple{AbstractArray{T,1} where T}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.normalize",
    "category": "method",
    "text": "normalize(x)\n\nTransforms a univariate array into a 0 mean and unit standard deviation array.\n\nExamples\n\njulia> GrammianAngularFields.normalize(collect(1:5))\n5-element Array{Float64,1}:\n -1.2649110640673518\n -0.6324555320336759\n  0.0               \n  0.6324555320336759\n  1.2649110640673518\n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.standardize-Tuple{AbstractArray{T,1} where T}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.standardize",
    "category": "method",
    "text": "standardize(x)\n\nTransforms a univariate array into a 0, 1 range.\n\n\n\n\n\n"
},

{
    "location": "#GrammianAngularFields.standardize-Tuple{AbstractArray{T,1} where T,Number,Number}",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "GrammianAngularFields.standardize",
    "category": "method",
    "text": "standardize(x, a, b)\n\nTransforms a univariate array into a a, b range.\n\n\n\n\n\n"
},

{
    "location": "#Functions-1",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "Functions",
    "category": "section",
    "text": "GrammianAngularFields.testme(x::AbstractVector)\nGrammianAngularFields.grammify(x::AbstractVector)\nGrammianAngularFields.plotgrammian(g)\nGrammianAngularFields.plotgrammian2(x::AbstractVector)\nGrammianAngularFields.normalize(x::AbstractVector)\nGrammianAngularFields.standardize(x::AbstractVector)\nGrammianAngularFields.standardize(x::AbstractVector, a::Number, b::Number)"
},

{
    "location": "#Index-1",
    "page": "GrammianAngularFields.jl Documentation",
    "title": "Index",
    "category": "section",
    "text": ""
},

]}

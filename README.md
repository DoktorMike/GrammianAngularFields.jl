# Grammian Angular Fields

[![Build Status](https://travis-ci.org/DoktorMike/GrammianAngularFields.jl.svg?branch=master)](https://travis-ci.org/DoktorMike/GrammianAngularFields.jl)
[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://DoktorMike.github.io/GrammianAngularFields.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://DoktorMike.github.io/GrammianAngularFields.jl/dev)

A small package that converts a univariate array into a Grammian Angular Field.

The usage is super simple and the code

```julia
grammify(1:4)
```

produces

>4×4 Array{Float64,2}:
>  1.0        0.333333  -0.333333  -1.0     
>  0.333333  -0.777778  -1.0       -0.333333
> -0.333333  -1.0       -0.777778   0.333333
> -1.0       -0.333333   0.333333   1.0  


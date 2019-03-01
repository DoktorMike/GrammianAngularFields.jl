push!(LOAD_PATH,"../src/")

using Documenter, GrammianAngularFields

makedocs(sitename="Grammian Angular Fields Documentation")
deploydocs(repo = "github.com/DoktorMike/GrammianAngularFields.jl.git")

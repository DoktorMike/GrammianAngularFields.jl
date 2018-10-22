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

export grammify

include("transformations.jl")
include("grammians.jl")

greet() = print("This is Grammian Angular Fields!")

end # module

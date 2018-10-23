using Test
using GrammianAngularFields
using StatsBase

@testset "trigonometric identities" begin
    θ = 2/3*π
    @test sin(-θ) ≈ -sin(θ)
    @test cos(-θ) ≈ cos(θ)
    @test sin(2θ) ≈ 2*sin(θ)*cos(θ)
    @test cos(2θ) ≈ cos(θ)^2 - sin(θ)^2
end;

@testset "transformation checks" begin
    x = GrammianAngularFields.normalize(collect(1:10))
    @test StatsBase.mean(x) ≈ 0
    @test StatsBase.stdm(x, 0) ≈ 1
    x = GrammianAngularFields.standardize(collect(1:10))
    @test maximum(x) ≈ 1
    @test minimum(x) ≈ 0
    x = GrammianAngularFields.standardize(collect(1:10), 3, 5)
    @test maximum(x) ≈ 5
    @test minimum(x) ≈ 3
    x = GrammianAngularFields.grammify(collect(1:3))
    @test x ≈ [1.0 -1.83697e-16 -1.0; -1.83697e-16 -1.0 6.12323e-17; -1.0 6.12323e-17 1.0]
end;


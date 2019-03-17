# Bhāskara

Provides Bhaskara I's sine approximation formula

```julia
sinπ(θ) = 16(π-θ)θ / (5π^2 - 4(π-θ)θ) # < 0.1% error, θ ∈ [0,π]
```

There is also `sin2π(θ)` for `θ ∈ [-π,π]`, and `Bhaskara.sin(θ)` for `θ ∈ 𝐑`,
by inserting appropriate `mod(,2π)` and `sign()*abs()` bits. 

Similarly `cosπ(θ)` is for `θ ∈ [-π/2,π/2]`, and `Bhaskara.cos(θ)` for `θ ∈ 𝐑`.

# Bhāskara

Provides Bhaskara I's sine approximation formula

```julia
sinπ(θ) = 16(π-θ)θ / (5π^2 - 4(π-θ)θ)      # < 0.1% error, θ ∈ [0,π]
```

There is also `sin2π(θ)` for `θ ∈ [-π,π]`, and `Bhaskara.sin(θ)` for `θ ∈ 𝐑`,
by inserting appropriate `mod(,2π)` and `sign()*abs()` bits. 
Similarly `cosπ(θ)` is for `θ ∈ [-π/2,π/2]`, and `Bhaskara.cos(θ)` for all `θ ∈ 𝐑`.

<img src="sin.png?raw=true" width="600" height="400" alt="versions of sin" align="center" padding="5">

<!--
using Bhaskara, Plots
plot(-2π:0.01:2π, sinπ.(-2π:0.01:2π), lab="sin\\pi")
plot!(-2π:0.01:2π, sin2π.(-2π:0.01:2π), lab="sin2\\pi")
plot!(-2π:0.01:2π, Bhaskara.sin.(-2π:0.01:2π), lab="sin")
plot!(xticks=([-2π,-π,0,π,2π],["-2\\pi","-\\pi","0","\\pi","2\\pi"]), ylim=[-2,2])
savefig("sin.png")
-->

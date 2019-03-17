module Bhaskara

export sinπ, sin2π, cosπ, sind180


sinπ(θ) = 16(π-θ)θ / (5π^2 - 4(π-θ)θ)

sin2π(θ) = sign(θ) * sinπ(abs(θ))

sin(θ::T) where T<:Number = sin2π(mod(θ+π, T(2)*π) - π)


sind180(x) = 4(180-x)x / (40500 - (180-x)x)

sind360(x) = sign(x) * sin180(abs(x))

sind(x::Number) = sind360(mod(x+180,360)-180)


cosπ(θ) = (π^2 - 4θ^2) / (π^2+θ^2)

cos(θ::T) where T<:Number = sin2π(mod(θ+π/T(2), T(2)*π) - π)


tan(θ::Number) = sin(θ) / cos(θ)

end # module

### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ fc1e58a0-b42c-11eb-2591-f90117a3a3e7
using Pkg

# ╔═╡ 6a2dd64f-8bb2-4e7b-a025-58f332bd0ff1
using PlutoUI

# ╔═╡ 46dda0c4-fbd2-4ada-809b-3ff8c07f2d14
abstract type AdversarialNode end

# ╔═╡ b320c51f-2307-4f8f-affa-a04ec220b9cc
struct Terminal <: AdversarialNode
		utility::Int64
end

# ╔═╡ c38fda13-807b-4195-a7ae-0853dd4f7707
@enum PlayerAction PlayerMIN PlayerMAX

# ╔═╡ 30f4eaa5-7e81-4e71-86fc-7b4cde1833bb
values = [3, 5, 8, 2, 0, 7, 8, 3, 9]

# ╔═╡ 792472c5-a3d1-4847-aef4-3890905a9217
MAX = 1000

# ╔═╡ 55420929-89f1-4083-9dea-0cd073ccfb7d
MIN = -1000

# ╔═╡ f9b77260-f98e-49e3-b54a-730d4201ba74
Max = 1000

function abpruning(depth, nodeIndex, MaxPlayer, values, alpha, beta)
	if (depth == 3)
		return values[nodeIndex]
	end
	
	if (MaxPlayer)
			best = MIN
			
			for i in range(0, 2)
				number = abpruning(depth + 1, nodeIndex * 2 + i, False, values, alpha, beta)
				best = max(best, number)
				alpha = max(alpha, best)
				
				if (beta <= alpha)
					break
				end
		end					
			return best
					
	else
		best = MAX
				
		for i in range(0, 2)
			number = abpruning(depth + 1, nodeIndex * 2 + i, False, values, alpha, beta)
			best = max(best, number)
				alpha = max(alpha, best)
				
				if (beta <= alpha)
					break
				end
					
			return best

println("The value is: ", abpruning(0, 0, True, values, MIN, MAX))
			end

# ╔═╡ Cell order:
# ╠═fc1e58a0-b42c-11eb-2591-f90117a3a3e7
# ╠═6a2dd64f-8bb2-4e7b-a025-58f332bd0ff1
# ╠═46dda0c4-fbd2-4ada-809b-3ff8c07f2d14
# ╠═b320c51f-2307-4f8f-affa-a04ec220b9cc
# ╠═c38fda13-807b-4195-a7ae-0853dd4f7707
# ╠═30f4eaa5-7e81-4e71-86fc-7b4cde1833bb
# ╠═792472c5-a3d1-4847-aef4-3890905a9217
# ╠═55420929-89f1-4083-9dea-0cd073ccfb7d
# ╠═f9b77260-f98e-49e3-b54a-730d4201ba74

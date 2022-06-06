### A Pluto.jl notebook ###
# v0.19.8

using Markdown
using InteractiveUtils

# ╔═╡ 0d2993c9-bd78-4877-a41d-3fe47158e488
# add definition to complement in the model function above
# use "replace" function to output the complement nucleotide of the given sequence
# tested and found that for loop is not necessary
function complement(strand)
	strand = lowercase(strand) # use "lowercase" function convert input sequence to lower case to avoid mixed caps and lowercases not being recognized
	return(replace(strand, "a" => "t", "t" => "a", "c" => "g", "g" => "c"))
end

# ╔═╡ a9fbe2e0-e44b-11ec-2740-6385170a927f
# function defined in the question
function dsDNA(strand)
	strand = lowercase(strand) # use "lowercase" function convert input sequence to lower case to avoid mixed caps and lowercases not being recognized
	upper = strand |> complement |> reverse
	lower = strand
	println(upper)
	println(lower)
end
# original code "return (upper * "\n" lower)" does not output sequences in two parallel lines
# "println" function includes a new line

# ╔═╡ 6238a25c-d34c-4f74-8410-272d70058184
# test the defined function
"ACGTGGTCTTAA" |> complement

# ╔═╡ 69b93d08-7866-495e-86ba-63878911bab0
# use "reverse" function to output the re-ordering of the sequence of nucleotide in the given sequence
print(reverse("actgatcgtac"))

# ╔═╡ ddfc3536-077e-4b09-8567-bf93f6f8d10d
"Actgatcgtac" |> dsDNA

# ╔═╡ 18d05851-638a-4c09-8293-cdfce7a06519
# add function dna_to_rna for converting nucleotides between dna and rna
# use "replace" function to output the complement nucleotide of the given sequence
# tested and found that for loop is not necessary
function dna_to_rna(strand)
	strand = lowercase(strand) # use "lowercase" function convert input sequence to lower case to avoid mixed caps and lowercases not being recognized
	return(replace(strand, "t" => "u"))
end

# ╔═╡ 077243b0-e0de-4574-8bcc-dda1ebb1674e
"ACGTGGTCTTAA" |> dna_to_rna

# ╔═╡ 017f2871-e7db-43d4-92f2-2f1d19530186
# add function dna_to_rna for converting nucleotides between dna and rna
# use "replace" function to output the complement nucleotide of the given sequence
# tested and found that for loop is not necessary
function rna_to_dna(strand)
	strand = lowercase(strand) # use "lowercase" function convert input sequence to lower case to avoid mixed caps and lowercases not being recognized
	return(replace(strand, "u" => "t"))
end

# ╔═╡ 5dfe7997-c68f-4e63-bb02-7d8ecfcce263
"acguggucuuaa" |> rna_to_dna

# ╔═╡ 35380c76-1018-446d-bcd9-8e654453d37a
# translate DNA sequence into protein sequence
# DNA codon table needed for "replace" function
# check if DNA sequence is a divisor of 3 by using "isinteger" function to check quotient of the length of sequence divided by 3
function translate(strand)
	strand = lowercase(strand) # use "lowercase" function convert input sequence to lower case to avoid mixed caps and lowercases not being recognized
	if isinteger(length(strand)/3)
		return(replace(strand,
			"gct" => "A", "gcc" => "A", "gca" => "A", "gcg" => "A",
			"cgt" => "R", "cgc" => "R", "cga" => "R", "cgg" => "R", "aga" => "R", "agg" => "R",
			"aat" => "N", "aac" => "N",
			"gat" => "D", "gac" => "D",
			"tgt" => "C", "tgc" => "C",
			"caa" => "Q", "cag" => "Q",
			"gaa" => "E", "GAG" => "E",
			"ggt" => "G", "ggc" => "G", "gga" => "G", "ggg" => "G",
			"cat" => "H", "cac" => "H",
			"atg" => "M",
			"att" => "I", "atc" => "I", "ata" => "I",
			"ctt" => "L", "ctc" => "L", "cta" => "L", "ctg" => "L", "tta" => "L", "ttg" => "L",
			"aaa" => "K", "aag" => "K",
			"ttt" => "F", "ttc" => "F",
			"cct" => "P", "ccc" => "P", "cca" => "P", "ccg" => "P",
			"tct" => "S", "tcc" => "S", "tca" => "S", "tcg" => "S", "agt" => "S", "agc" => "S",
			"act" => "T", "acc" => "T", "aca" => "T", "acg" => "T",
			"tgg" => "W",
			"tat" => "Y", "tac" => "Y",
			"gtt" => "V", "gtc" => "V", "gta" => "V", "gtg" => "V",
			"taa" => "!", "tga" => "!", "tag" => "!"))
	else
		return(md"Your input DNA sequence is not a divisor of 3. Please check your sequence.")
	end
end

# ╔═╡ 5844f97d-d83c-47d9-a467-98258672a413
"actgatcgtacc" |> translate

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.3"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╠═a9fbe2e0-e44b-11ec-2740-6385170a927f
# ╠═0d2993c9-bd78-4877-a41d-3fe47158e488
# ╠═6238a25c-d34c-4f74-8410-272d70058184
# ╠═69b93d08-7866-495e-86ba-63878911bab0
# ╠═ddfc3536-077e-4b09-8567-bf93f6f8d10d
# ╠═18d05851-638a-4c09-8293-cdfce7a06519
# ╠═077243b0-e0de-4574-8bcc-dda1ebb1674e
# ╠═017f2871-e7db-43d4-92f2-2f1d19530186
# ╠═5dfe7997-c68f-4e63-bb02-7d8ecfcce263
# ╠═35380c76-1018-446d-bcd9-8e654453d37a
# ╠═5844f97d-d83c-47d9-a467-98258672a413
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

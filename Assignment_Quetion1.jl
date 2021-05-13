### A Pluto.jl notebook ###
# v0.14.1

using Markdown
using InteractiveUtils

# ╔═╡ e5078210-b0f6-11eb-3368-01994d24cb51
using Pkg

# ╔═╡ c504419e-2bd1-426e-9d5d-102ff8659b0a
Pkg.activate("Assignment_Question1.jl")

# ╔═╡ 24ec30e1-63e2-41fb-a5c7-2a5bd86dcdce
using PlutoUI

# ╔═╡ ff662323-cbb7-4828-8315-70742451eb44
struct Action
	Action::String
	Cost::Int64
end

# ╔═╡ 40b98ea7-dcc5-43d1-8e95-d56a02c50944
me = Action("Move east",3)

# ╔═╡ 5fbb1465-6c87-4df4-a6dc-90cf22345fee
mw = Action("Move west",3)

# ╔═╡ b830d723-4441-4ae3-aa77-4dadd9145684
re = Action("Remain",1)

# ╔═╡ cecae287-1518-4927-b85f-d9531fd10412
co = Action("Collect",5)

# ╔═╡ ad4d12fa-53e0-4eaa-88cc-56218f22e9b9
struct State
	state::String
	collect::Array{}
	Office::String
end

# ╔═╡ e374da48-473d-452b-bbc7-03f972405124
default_state = State("default state",[1,3,2,1],"C1")


# ╔═╡ 6a79665b-ce20-4a27-807c-e2b04d954bd5
option_one = State("Option_one",[1,3,2,1],"W")

# ╔═╡ a12d68a1-60d1-476d-a6fe-224d6ef6674d
option_two = State("Option_two",[1,3,2,1],"C2")

# ╔═╡ 96a1cb47-7cc6-4dbd-907a-319dac7b6962
option_three = State("Option_three",[1,3,2,1],"E")

# ╔═╡ ea78595b-dc9d-45c7-939c-ff89571257fa
option_four = State("Option_four",[0,3,2,1],"W")

# ╔═╡ dbf1edef-3060-42ed-a955-df42e437b62c
option_five = State("option_Five",[0,3,2,1],"C1")

# ╔═╡ 20370d68-b369-41fb-b558-27802d9aa156
option_six = State("option_six",[0,2,2,1],"C1")

# ╔═╡ 73c844d1-9396-416b-b8eb-5e931dbe9356
option_seven = State("option_seven",[0,1,2,1],"C1")

# ╔═╡ 2ab49224-e449-4fdf-8544-58f16c206fd2
option_eight = State("option_eight",[0,0,2,1],"C1")

# ╔═╡ 37e6e126-d872-4855-84da-f8257d86ee5c
option_nine = State("Option_nine",[0,0,2,1],"C2")

# ╔═╡ 81f7b904-92a5-4ba5-9b03-f2ccdfa0a94f
option_ten = State("option_ten",[0,0,1,1],"C2")

# ╔═╡ e16aeeba-12f4-441d-9497-d0c722040e3b
option_eleven = State("option_eleven",[0,0,0,1],"C2")

# ╔═╡ cf9ca30e-d98d-4703-8b62-496451d78760
option_twelve = State("option_twelve",[0,0,0,1],"E")

# ╔═╡ 804ad50f-4bf7-43e8-9906-28c170fe5e9c
option_thirteen = State("option_thirteen ",[0,0,0,0],"E")
#complele with the options from the first office (w) and ended at the last office (E)

# ╔═╡ 001eb9f2-5d59-4587-a96c-a98c8f908e50
#Options from the second office
option_forteen = State("option_forteen",[1,3,2,1],"C1")

# ╔═╡ c7af917f-98d6-4b47-b36b-10f6aa8622f5
option_fifteen = State("option_fifteen",[1,2,2,1],"C1")

# ╔═╡ 53326584-6fcd-4be9-849b-ee12d7b03956
option_sixteen = State("option_sixteen",[1,1,2,1],"C1")

# ╔═╡ 4128dcf4-d086-41e7-9729-c98018e9400e
option_seventeen = State("option_seventen",[1,0,2,1],"C1")

# ╔═╡ f20ddb54-62ca-4efb-9abc-161f5e7cc1c6
option_eighteen = State("option_eighteen",[1,0,2,1],"W")

# ╔═╡ fc29f2e5-2359-41a1-be2a-e30f271d1d17
option_nineteen = State("option_nineteen",[0,0,2,1],"W")

# ╔═╡ 26e96be1-93b6-4977-ad53-dd36a37f801d
option_twenty = State("option_twenty",[0,0,2,1],"C1")

# ╔═╡ 4517ab9e-1ac2-402e-bf02-51416d89ca8e
option_twentyone = State("option_twentyone",[0,0,2,1],"C2")

# ╔═╡ 2192be20-8fc9-4f36-a336-d4f7fb4f6ac6
option_twentytwo = State("option_twentytwo",[0,0,1,1],"C2")

# ╔═╡ 452965dd-ded7-4e22-9f18-555ffe7b5d91
option_twentythree = State("option_twentythree",[0,0,0,1],"C2")

# ╔═╡ 3127b351-b1c3-4e14-833b-934105d70b2a
option_twentyfour = State("option_twentyfour",[0,0,0,1],"E")

# ╔═╡ 69ad7dfd-58a7-4bf2-838d-682f3b14421c
option_twentyfive = State("option_twentyfive",[0,0,0,0],"E")
#complele with the options from the secomd office (C1) and ended at the last office (E)

# ╔═╡ 7d76c165-02bb-40dc-9e6d-699f0a3a3d25
#Option from the third office
option_twentysix = State("option_twentysix",[1,3,2,1],"C2")

# ╔═╡ 9f9738c4-d113-471d-b8e8-307e6d2bb5b6
option_twentyseven = State("option_twentyseven",[1,3,2,1],"E")

# ╔═╡ 9d8811c9-ed3d-47b8-87ca-14a21e68e907
option_twentyeight = State("option_twentyeight",[1,3,2,0],"E")

# ╔═╡ a9ce6cf5-6bac-4f09-b7e5-ee02f288e3a7
option_twentynine = State("option_twentynine",[1,3,2,0],"C2")

# ╔═╡ d62398a8-60e7-4f26-ba1b-329a4a5daadc
option_thirty = State("option_thirty",[1,3,1,0],"C2")

# ╔═╡ 2b48eb1e-fb26-4610-98b4-3743598ac305
option_thirty1 = State("option_thirty1",[1,3,0,0],"C2")

# ╔═╡ 9ec3499b-d1c7-4aa4-8443-a9e004717a6c
option_thirty2 = State("option_thirty2",[1,2,0,0],"C1")

# ╔═╡ dfa17c37-7308-43a9-875c-d1039409904f
option_thirty3 = State("option_thirty3",[1,1,0,0],"C1")

# ╔═╡ a14e590d-71ca-45a4-b2c0-a3aa6885bed6
option_thirty4 = State("option_thirty4",[1,0,0,0],"C1")

# ╔═╡ 5d1f14a9-d46e-47bb-ac65-672a56d5e735
option_thirty5 = State("option_thirty5",[0,0,0,0],"W")

# ╔═╡ c155f298-2c87-4a97-96f2-77fba76148f9
#OPTION IN THE 4TH OFFICE
option_thirty6 = State("option_thirty6",[1,3,2,0],"E")

# ╔═╡ 9ac039ec-2525-4dea-b17b-82e6d87e3b1f
option_thirty7 = State("option_thirty7",[1,3,1,0],"C2")

# ╔═╡ 1d176633-1db1-4106-bc8d-882ecc951481
option_thirty8 = State("option_thirty8",[1,3,0,0],"C2")

# ╔═╡ b3dac7fb-5d93-4c28-b216-cbf87d3c0d84
option_thirty9 = State("option_thirty9",[1,2,0,0],"c1")

# ╔═╡ e7000f7a-f7f3-4cee-871a-e87ccc3f6dd3
option_40 = State("option_40",[1,1,0,0],"c1")

# ╔═╡ a945daca-e936-4475-b6c0-38d9f545274c
option_41 = State("option_41",[1,0,0,0],"c1")

# ╔═╡ 9b7e094f-e2b3-4f41-988d-09c41050cc88
option_42 = State("option_42",[1,0,0,0],"W")

# ╔═╡ 3b3057a0-8da7-49eb-9f14-c2a712e637e8
option_43 = State("option_43",[0,0,0,0],"W")

# ╔═╡ 12aea137-bbda-47e7-a6c2-a8a01c15b644
TransitionModel = Dict(default_state => [(mw,option_one),(me,option_two),(me,option_three)])

# ╔═╡ 77910ec7-e4df-49e6-bb3f-0b7d09c37cfc
push!(TransitionModel, option_three =>[(mw,option_four),(co,option_four),(me,option_five)]) 

# ╔═╡ ad75d90c-9fec-44e7-a649-ca4222f7a4c6
push!(TransitionModel, option_five =>[(re,option_five),(me,option_six),(co,option_six),(co,option_seven)]) 

# ╔═╡ 52c8cbf8-8010-4b74-932b-5d67ae66e3e2
push!(TransitionModel, option_seven =>[(me,option_eight),(co,option_eight),(me,option_nine),(co,option_nine)]) 

# ╔═╡ 7e2e94f7-b726-46ce-be9f-73e3e8429880
push!(TransitionModel, option_nine =>[(me,option_ten),(co,option_ten),(me,option_eleven),(co,option_eleven)]) 

# ╔═╡ 57e0d2a8-23ce-4cae-be84-43452b578f6a
push!(TransitionModel, option_eleven =>[(me,option_twelve),(co,option_twelve),(me,option_thirteen)]) 

# ╔═╡ ee0b6d17-03fa-463d-86c9-b2b2d76b47b2
push!(TransitionModel, option_thirteen =>[(re,option_thirteen)]) 

# ╔═╡ 0de2fbe9-4632-46e0-bd28-a6ef2b68c6ee
push!(TransitionModel, option_forteen =>[(re,option_forteen),(me,option_fifteen),(co,option_fifteen)]) 

# ╔═╡ 0111a606-6442-48e6-9cef-23989ada276f
push!(TransitionModel, option_sixteen =>[(me,option_sixteen),(co,option_sixteen),(me,option_seventeen),(co,option_seventeen),(mw,option_eighteen)]) 

# ╔═╡ 4da98fed-3738-4acf-86aa-87ac07a2c951
push!(TransitionModel, option_eighteen =>[(co,option_eighteen),(re,option_eighteen),(me,option_nineteen)]) 

# ╔═╡ d24b45ba-1a90-4ef8-874a-573c2693837d
push!(TransitionModel, option_nineteen =>[(co,option_nineteen),(me,option_twenty),(re,option_twenty)]) 

# ╔═╡ 0307278a-78e6-4d8e-bf7c-e8eeb2095eea
push!(TransitionModel, option_twentyone =>[(me,option_twentyone),(me,option_twentytwo),(co,option_twentytwo)]) 

# ╔═╡ 5396d6f8-cbe6-459a-a141-d0223ea36a8a
push!(TransitionModel, option_twentyone =>[(me,option_twentyone),(re,option_twentytwo),(co,option_twentytwo)]) 

# ╔═╡ 60b81027-9312-4d8e-b816-c558f0f806a9
push!(TransitionModel, option_twentythree =>[(re,option_twentythree),(co,option_twentythree),(me,option_twentyfour)])

# ╔═╡ ee4d431b-74e0-4d4f-bd3e-121953f70eff
push!(TransitionModel, option_twentyfour =>[(re,option_twentyfour),(co,option_twentyfour),(me,option_twentyfive)])

# ╔═╡ 01ef61ad-2ad7-4a2c-a601-5f2452b1e139
push!(TransitionModel, option_twentyfive =>[(re,option_twentyfive)])

# ╔═╡ f835d471-c6aa-4545-b255-4232c8a87cf9
push!(TransitionModel, option_twentyfive =>[(re,option_twentyfive)])

# ╔═╡ 24754f68-342b-4247-b441-7ca65a7950f4
push!(TransitionModel, option_twentysix =>[(re,option_twentysix)])

# ╔═╡ a2a4fb7f-d292-477d-bff0-6ef14f1960c1
push!(TransitionModel, option_twentyseven =>[(me,option_twentyseven),(co,option_twentyseven),(me,option_twentyeight)])

# ╔═╡ f04df51f-731f-465c-adb3-f0f99c1b3c0f
push!(TransitionModel, option_twentyeight =>[(mw,option_twentynine),(co,option_twentynine)])

# ╔═╡ 2437b79b-ac80-4b72-ab63-3fd47cd2f64b
push!(TransitionModel, option_thirty =>[(re,option_thirty),(co,option_thirty)])

# ╔═╡ a8a74161-4480-45d1-89d3-ab230a19b975
push!(TransitionModel, option_thirty1 =>[(re,option_thirty1),(co,option_thirty1),(mw,option_thirty2)])

# ╔═╡ f2116a5c-ecb7-492e-b037-b7103b134f8e
push!(TransitionModel, option_thirty2 =>[(co,option_thirty2),(re,option_thirty3)])

# ╔═╡ 96f4e5d5-dde1-4f89-bfc8-85c21ce955d8
push!(TransitionModel, option_thirty3 =>[(co,option_thirty3),(re,option_thirty4)])

# ╔═╡ 6e9820d4-8ec1-4ad6-aadb-f89286a5a07b
push!(TransitionModel, option_thirty4 =>[(co,option_thirty4),(mw,option_thirty5),(co,option_thirty5)])

# ╔═╡ a3e83535-9e4d-42fa-867a-ea67ddba6c79
push!(TransitionModel, option_thirty5 =>[(re,option_thirty5)])

# ╔═╡ fc840e1c-670a-4bfa-8c80-d49da9fdd347
push!(TransitionModel, option_thirty6 =>[(re,option_thirty6),(co,option_thirty6)])

# ╔═╡ 435f6c63-3e15-4594-b32e-9d1b4d346452
push!(TransitionModel, option_thirty7 =>[(mw,option_thirty7),(co,option_thirty7)])

# ╔═╡ 3a57c78f-61b1-4a4a-9e02-7cde55b3b8d6
push!(TransitionModel, option_thirty8 =>[(re,option_thirty8),(co,option_thirty8),(mw,option_thirty9)])

# ╔═╡ 467baa41-343e-4625-bb54-c0147fa8fb8a
push!(TransitionModel, option_thirty9 =>[(co,option_thirty9),(re,option_40),(co,option_40)])

# ╔═╡ b5a3de74-219c-4900-81af-1b1c081866b9
push!(TransitionModel, option_41 =>[(re,option_41),(co,option_41),(mw,option_42)])

# ╔═╡ d324235c-f87c-43e6-a6e1-8aabef6177b4
push!(TransitionModel, option_42 =>[(re,option_42)])

# ╔═╡ 702eb6c5-cf8f-4dbb-a3e5-99a66f953d08


# ╔═╡ 714f3cd0-9d1e-4bd8-850e-7e0c23dcef8a


# ╔═╡ 662f58c3-4d75-496a-b713-ab2424a49490


# ╔═╡ 25fce0fa-e15c-4ccf-88e9-4bd61a9bb96b
goalstates = [option_thirteen] #,[option_twentyfive],[option_thirty5],[option_43]

# ╔═╡ 9626deca-88e2-4632-9976-56dd446f2cb9
TransitionModel[default_state]

# ╔═╡ Cell order:
# ╠═e5078210-b0f6-11eb-3368-01994d24cb51
# ╠═c504419e-2bd1-426e-9d5d-102ff8659b0a
# ╠═24ec30e1-63e2-41fb-a5c7-2a5bd86dcdce
# ╠═ff662323-cbb7-4828-8315-70742451eb44
# ╠═40b98ea7-dcc5-43d1-8e95-d56a02c50944
# ╠═5fbb1465-6c87-4df4-a6dc-90cf22345fee
# ╠═b830d723-4441-4ae3-aa77-4dadd9145684
# ╠═cecae287-1518-4927-b85f-d9531fd10412
# ╠═ad4d12fa-53e0-4eaa-88cc-56218f22e9b9
# ╠═e374da48-473d-452b-bbc7-03f972405124
# ╠═6a79665b-ce20-4a27-807c-e2b04d954bd5
# ╠═a12d68a1-60d1-476d-a6fe-224d6ef6674d
# ╠═96a1cb47-7cc6-4dbd-907a-319dac7b6962
# ╠═ea78595b-dc9d-45c7-939c-ff89571257fa
# ╠═dbf1edef-3060-42ed-a955-df42e437b62c
# ╠═20370d68-b369-41fb-b558-27802d9aa156
# ╠═73c844d1-9396-416b-b8eb-5e931dbe9356
# ╠═2ab49224-e449-4fdf-8544-58f16c206fd2
# ╠═37e6e126-d872-4855-84da-f8257d86ee5c
# ╠═81f7b904-92a5-4ba5-9b03-f2ccdfa0a94f
# ╠═e16aeeba-12f4-441d-9497-d0c722040e3b
# ╠═cf9ca30e-d98d-4703-8b62-496451d78760
# ╠═804ad50f-4bf7-43e8-9906-28c170fe5e9c
# ╠═001eb9f2-5d59-4587-a96c-a98c8f908e50
# ╠═c7af917f-98d6-4b47-b36b-10f6aa8622f5
# ╠═53326584-6fcd-4be9-849b-ee12d7b03956
# ╠═4128dcf4-d086-41e7-9729-c98018e9400e
# ╠═f20ddb54-62ca-4efb-9abc-161f5e7cc1c6
# ╠═fc29f2e5-2359-41a1-be2a-e30f271d1d17
# ╠═26e96be1-93b6-4977-ad53-dd36a37f801d
# ╠═4517ab9e-1ac2-402e-bf02-51416d89ca8e
# ╠═2192be20-8fc9-4f36-a336-d4f7fb4f6ac6
# ╠═452965dd-ded7-4e22-9f18-555ffe7b5d91
# ╠═3127b351-b1c3-4e14-833b-934105d70b2a
# ╠═69ad7dfd-58a7-4bf2-838d-682f3b14421c
# ╠═7d76c165-02bb-40dc-9e6d-699f0a3a3d25
# ╠═9f9738c4-d113-471d-b8e8-307e6d2bb5b6
# ╠═9d8811c9-ed3d-47b8-87ca-14a21e68e907
# ╠═a9ce6cf5-6bac-4f09-b7e5-ee02f288e3a7
# ╠═d62398a8-60e7-4f26-ba1b-329a4a5daadc
# ╠═2b48eb1e-fb26-4610-98b4-3743598ac305
# ╠═9ec3499b-d1c7-4aa4-8443-a9e004717a6c
# ╠═dfa17c37-7308-43a9-875c-d1039409904f
# ╠═a14e590d-71ca-45a4-b2c0-a3aa6885bed6
# ╠═5d1f14a9-d46e-47bb-ac65-672a56d5e735
# ╠═c155f298-2c87-4a97-96f2-77fba76148f9
# ╠═9ac039ec-2525-4dea-b17b-82e6d87e3b1f
# ╠═1d176633-1db1-4106-bc8d-882ecc951481
# ╠═b3dac7fb-5d93-4c28-b216-cbf87d3c0d84
# ╠═e7000f7a-f7f3-4cee-871a-e87ccc3f6dd3
# ╠═a945daca-e936-4475-b6c0-38d9f545274c
# ╠═9b7e094f-e2b3-4f41-988d-09c41050cc88
# ╠═3b3057a0-8da7-49eb-9f14-c2a712e637e8
# ╠═12aea137-bbda-47e7-a6c2-a8a01c15b644
# ╠═77910ec7-e4df-49e6-bb3f-0b7d09c37cfc
# ╠═ad75d90c-9fec-44e7-a649-ca4222f7a4c6
# ╠═52c8cbf8-8010-4b74-932b-5d67ae66e3e2
# ╠═7e2e94f7-b726-46ce-be9f-73e3e8429880
# ╠═57e0d2a8-23ce-4cae-be84-43452b578f6a
# ╠═ee0b6d17-03fa-463d-86c9-b2b2d76b47b2
# ╠═0de2fbe9-4632-46e0-bd28-a6ef2b68c6ee
# ╠═0111a606-6442-48e6-9cef-23989ada276f
# ╠═4da98fed-3738-4acf-86aa-87ac07a2c951
# ╠═d24b45ba-1a90-4ef8-874a-573c2693837d
# ╠═0307278a-78e6-4d8e-bf7c-e8eeb2095eea
# ╠═5396d6f8-cbe6-459a-a141-d0223ea36a8a
# ╠═60b81027-9312-4d8e-b816-c558f0f806a9
# ╠═ee4d431b-74e0-4d4f-bd3e-121953f70eff
# ╠═01ef61ad-2ad7-4a2c-a601-5f2452b1e139
# ╠═f835d471-c6aa-4545-b255-4232c8a87cf9
# ╠═24754f68-342b-4247-b441-7ca65a7950f4
# ╠═a2a4fb7f-d292-477d-bff0-6ef14f1960c1
# ╠═f04df51f-731f-465c-adb3-f0f99c1b3c0f
# ╠═2437b79b-ac80-4b72-ab63-3fd47cd2f64b
# ╠═a8a74161-4480-45d1-89d3-ab230a19b975
# ╠═f2116a5c-ecb7-492e-b037-b7103b134f8e
# ╠═96f4e5d5-dde1-4f89-bfc8-85c21ce955d8
# ╠═6e9820d4-8ec1-4ad6-aadb-f89286a5a07b
# ╠═a3e83535-9e4d-42fa-867a-ea67ddba6c79
# ╠═fc840e1c-670a-4bfa-8c80-d49da9fdd347
# ╠═435f6c63-3e15-4594-b32e-9d1b4d346452
# ╠═3a57c78f-61b1-4a4a-9e02-7cde55b3b8d6
# ╠═467baa41-343e-4625-bb54-c0147fa8fb8a
# ╠═b5a3de74-219c-4900-81af-1b1c081866b9
# ╠═d324235c-f87c-43e6-a6e1-8aabef6177b4
# ╠═702eb6c5-cf8f-4dbb-a3e5-99a66f953d08
# ╠═714f3cd0-9d1e-4bd8-850e-7e0c23dcef8a
# ╠═662f58c3-4d75-496a-b713-ab2424a49490
# ╠═25fce0fa-e15c-4ccf-88e9-4bd61a9bb96b
# ╠═9626deca-88e2-4632-9976-56dd446f2cb9

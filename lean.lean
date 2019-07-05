universe u 

constants α β γ : Type u -- the type of Type u is Type u+1
constants (a : α) (b : β) (c : γ)
constant f : α → β 
constant g : β → γ 
constant h : α → β → γ 

#check λ x : α, g (f x)
#check λ y : α, h y
#check λ y, h y b -- lean infers the type of y

#check λ x : α, x
#check λ b : β, λ x : α, x
#check λ (b : β) (x : α), x

#check λ (g : β → γ) (f : α → β) (x : α), g (f x)
#check λ g : β → γ, λ f : α → β, λ x : α, g (f x)
#check λ x : α, λ f : α → β, λ g : β → γ, g (f x)
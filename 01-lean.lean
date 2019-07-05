universe u 

constants α β γ : Type u -- the type of Type u is Type u+1
constants (a : α) (b : β) (c : γ)
constant f : α → β 
constant g : β → γ 
constant h : α → β → γ 

#check λ x : α, g (f x)
#check λ y : α, h y
#check λ y, h y b -- lean infers the type of y

constant t' : β 
#check λ (x : α), t'
#check λ x : α, x
#check λ b : β, λ x : α, x
#check λ (b : β) (x : α), x
#check λ (x : α) (b : β), x

#check λ (g : β → γ) (f : α → β) (x : α), g (f x)
#check λ g : β → γ, λ f : α → β, λ x : α, g (f x)
#check λ x : α, λ f : α → β, λ g : β → γ, g (f x)

#check λ (α β : Type u) (b : β) (x : α), x 
#check λ (u : β) (z : α), z -- these 2 expressions are "alpha equivalent"

#check λ (α β γ : Type u) (g : β → γ) (f : α → β) (x : α), g (f x) -- returns the composition of g 
                                                                   -- with f
#check λ (α β γ : Type u) (x : α) (f : α → β) (g : β → γ), g (f x)

constants (t : α → β) (s : α)
#check t s
#check λ (t : α → β) (s : α), t s -- think this does the same as line 32
#check λ (s : α) (t : α → β), t s -- not sure what this does
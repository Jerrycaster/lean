#check (λ x : ℕ, x + 5)

constants α β γ : Type
constant f : α → β
constant g : β → γ
constant h : α → α
constants (a : α) (b : β)

#check (λ x : ℕ, x + 5) 5
#check (λ x : α, x) a
#check λ x : α, b -- λ (x : α), b : α → β
#check (λ x : α, b) a -- (λ (x : α), b) a : β

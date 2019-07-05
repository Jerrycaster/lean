#check λ x : ℕ, x + 5
#reduce (λ x : ℕ, x + 5) 5
#reduce (λ x : ℕ, x / 5) 5
#reduce (λ x : ℕ, x - 10) 5
#reduce (λ x : ℤ, x - 10) 5

constants α β γ : Type
constant f : α → β
constant g : β → γ
constant h : α → α
constant H : γ → α 
constants (a : α) (b : β) (c : γ)

#check λ x : α, b -- λ (x : α), b : α → β
#check (λ x : α, b) a -- (λ (x : α), b) a : β
#check (λ x : α, x) a -- (λ (x : α), x) a : α
#check (λ x : α, b) (h a) -- (λ (x : α), b) (h a) : β
#check (λ x : α, b) (H c) -- (λ (x : α), b) (H c) : β, 14 and 15 are the same
#check (λ x : α, g (f x)) (h (h (h a))) -- (λ (x : α), g (f x)) (h (h (h a))) : γ

#check λ /-(α β γ : Type)-/ (g : β → γ) (f : α → β) (x : α), g (f x) /- returns the composition of 
                                                        g with f, : (β → γ) → (α → β) → α → γ -/
#check (λ (v : β → γ) (u : α → β) (x : α), v (u x)) g f a

#check g (f a)
#check (λ (Q R S : Type) (v : R → S) (u : Q → R) (x : Q), v (u x)) α β γ g f a

#reduce (λ x : α, x) a -- identity function, f(x)=x
#reduce (λ x : α, b) a -- constant function, f(x)=b
#reduce (λ x : α, b) (h (h a))

#check c
#check (λ x : α, g (f x)) a -- (λ (x : α), g (f x)) a : γ, 
#reduce (λ x : α, g (f x)) a -- g (f a)
#reduce (λ (v : β → γ) (u : α → β) (x : α), v (u x)) g f a -- g (f a)
#reduce (λ (φ ϕ ψ: Type) (v : ϕ → ψ) (u : φ → ϕ) (x : φ), v (u x)) α β γ g f a -- g (f a)
-- above expression assigns (φ ϕ ψ) to (α β γ) respectively, the functions v, u to g, f  respectively, 
-- and x in φ to a

constants m n : ℕ 
constant b' : bool

#reduce (m, n).fst -- m
#reduce (m, n).snd -- n

#reduce tt && ff        -- ff
#reduce tt && tt        -- tt
#reduce ff && ff        -- ff
#reduce ff && tt        -- ff

#reduce ff && b'         -- ff
#reduce b' && ff         -- b' && ff

#print "lean can compute as well"
#eval 3 + 4

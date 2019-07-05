def foo : (ℕ → ℕ) → ℕ := λ f, f 0

#check foo
#print foo

def foo' := λ f : ℕ → ℕ, f 0        -- lean infers the type of foo

-- def foo : α := bar --         this is the general form of a definition, where α is its type

def double (x : ℕ) : ℕ := x + x
#reduce double 3        -- 6

def square (x : ℕ) : ℕ := x * x
#reduce square 3        -- 9

def do_twice (f : ℕ → ℕ) (x : ℕ) : ℕ := f (f x)
#reduce do_twice square 3       -- 81

def compose (g : ℕ → ℕ) (f : ℕ → ℕ) (x : ℕ) := g (f x)
#reduce compose double square 3 -- 18

-- these are equivalent to...--

def double' : ℕ → ℕ := λ x, x + x
def square' : ℕ → ℕ := λ x, x * x
def do_twice' : (ℕ → ℕ) → ℕ → ℕ := λ f x, f (f x)
#reduce double' 4
#reduce square' 4
#reduce do_twice' square' 4 -- 256

def compose' (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ := g (f x)
--def compose'' : ((ℕ → ℕ) × (ℕ → ℕ)) → (ℕ → ℕ) := λ g f x, g (f x)
#reduce compose' double square 4

def Do_twice : ((ℕ → ℕ) → (ℕ → ℕ)) → (ℕ → ℕ) → (ℕ → ℕ) := λ F x, F (F x)
#reduce Do_twice do_twice double 2
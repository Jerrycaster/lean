def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) := g (f x)
def cube (x : ℕ) := x * x * x
#reduce cube 
#reduce compose ℕ ℕ ℕ cube cube 2 -- 512

def mult (x : ℕ) (y : ℕ) := x * y
#reduce mult 3 5
def curry (α β γ : Type) (f : α × β → γ) : α → (β → γ) := 
def test (α β γ : Type) (a : α) (b : β) := a b
#reduce test ℕ ℕ ℕ mult 3 5
#reduce curry

def uncurry (α β γ : Type) (f : α → β → γ) : α × β → γ := 

#check let y := 2 + 2 in y * y
#reduce let y := 2 + 2 in y * y   -- 16

def t (x : ℕ) : ℕ := 
let y := x + x in y * y

#reduce t 2   -- 16

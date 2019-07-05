def curry (α β γ : Type) (f : α × β → γ) : α → (β → γ) :=

def uncurry (α β γ : Type) (f : α → β → γ) : α × β → γ :=


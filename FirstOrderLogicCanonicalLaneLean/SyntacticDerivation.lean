import firstOrderLogicCanonicalLaneLean.FirstOrderLanguagePackage

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

inductive DerivationRule (L : FirstOrderLanguagePackage) where
  | axiom (φ : FOLFormula L)
  | modusPonens (φ ψ : FOLFormula L)
  | generalization (φ : FOLFormula L) (v : ℕ)

def Derivation (L : FirstOrderLanguagePackage) (T : Set (FOLFormula L)) (φ : FOLFormula L) : Prop :=
  ∃ (seq : List (FOLFormula L)), seq ≠ [] ∧ seq.last = φ ∧
    ∀ (i : ℕ), i < seq.length →
      seq.get? i = some φ_i →
        (φ_i ∈ T) ∨
        (∃ (rule : DerivationRule L), rule = DerivationRule.axiom φ_i) ∨
        (∃ (j k : ℕ), j < i ∧ k < i ∧ seq.get? j = some ψ ∧ seq.get? k = some (ψ ⟹ φ_i)) ∨
        (∃ (v : ℕ) (ψ : FOLFormula L), seq.get? i = some (∀ v, ψ) ∧ seq.get? (i-1) = some ψ)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

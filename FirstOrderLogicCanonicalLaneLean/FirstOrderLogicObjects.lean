import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure FirstOrderLanguage where
  functionSymbols : Type
  relationSymbols : Type
  arity : functionSymbols ⊕ relationSymbols → ℕ

structure FirstOrderStructure (L : FirstOrderLanguage) where
  universe : Type
  interpretation : (s : L.functionSymbols ⊕ L.relationSymbols) → (Fin (L.arity s) → universe) → universe ⊕ Prop

inductive FOLFormula (L : FirstOrderLanguage) where
  | equal (t1 t2 : Term L)
  | relation (R : L.relationSymbols) (args : List (Term L))
  | and (φ ψ : FOLFormula L)
  | or (φ ψ : FOLFormula L)
  | implies (φ ψ : FOLFormula L)
  | not (φ : FOLFormula L)
  | forall (v : ℕ) (φ : FOLFormula L)
  | exists (v : ℕ) (φ : FOLFormula L)

structure FOLAdmittedObject where
  language : FirstOrderLanguage
  structure : FirstOrderStructure language
  theory : List (FOLFormula language)
  modelOfTheory : ∀ φ ∈ theory, structure ⊧ φ
  conclusion : True

def FOLWitnessClosed (O : FOLAdmittedObject) : Prop :=
  O.conclusion

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

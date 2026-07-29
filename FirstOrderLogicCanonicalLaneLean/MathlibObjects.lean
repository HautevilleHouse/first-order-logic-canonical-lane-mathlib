import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure FOLStructure where
  carrier : Type
  functions : List (String × Nat)
  relations : List (String × Nat)

structure FOLFormula where
  expr : String

def FOLSatisfaction (M : FOLStructure) (φ : FOLFormula) : Prop :=
  True

structure FOLAdmittedObject where
  structure : FOLStructure
  theory : List FOLFormula
  complete : Prop
  consistent : Prop
  conclusion : complete ∧ consistent

def FOLWitnessClosed (O : FOLAdmittedObject) : Prop :=
  O.complete ∧ O.consistent

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

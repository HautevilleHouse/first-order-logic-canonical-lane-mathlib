import firstOrderLogicCanonicalLaneLean.FirstOrderLanguagePackage

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure ModelTheorySemanticsPackage (L : FirstOrderLanguagePackage) where
  satisfactionRelation : FOLFormula L → Prop
  validityDefinition : FOLFormula L → Prop
  logicalConsequenceDefinition : Set (FOLFormula L) → FOLFormula L → Prop

def Satisfiable (L : FirstOrderLanguagePackage) (M : ModelTheorySemanticsPackage L) (T : Set (FOLFormula L)) : Prop :=
  ∃ (A : FOLAdmittedObject), A.language = L ∧ ∀ φ ∈ T, M.satisfactionRelation φ

def Valid (L : FirstOrderLanguagePackage) (M : ModelTheorySemanticsPackage L) (φ : FOLFormula L) : Prop :=
  M.validityDefinition φ

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure FirstOrderSignature where
  functionSymbols : List String
  relationSymbols : List String
  arity : String → Nat

def signatureWellFormed (S : FirstOrderSignature) : Prop :=
  (∀ f ∈ S.functionSymbols, S.arity f ≥ 0) ∧
  (∀ r ∈ S.relationSymbols, S.arity r ≥ 1)

structure Term (S : FirstOrderSignature) where
  var : Option Nat
  func : Option (String × List (Term S))
  termWellFormed : Prop

structure Formula (S : FirstOrderSignature) where
  quantifierFree : Prop
  atomic : Prop
  connective : Option String
  subformulas : List (Formula S)
  formulaWellFormed : Prop

structure StructuralInductionPackage (S : FirstOrderSignature) where
  baseCaseCovered : Prop
  inductionStepCovered : Prop
  inductionHypothesisAdmissible : Prop

structure StructuralInductionEvidence {S : FirstOrderSignature}
  (P : StructuralInductionPackage S) where
  baseCaseCoveredClosed : P.baseCaseCovered
  inductionStepCoveredClosed : P.inductionStepCovered
  inductionHypothesisAdmissibleClosed : P.inductionHypothesisAdmissible

def StructuralInductionClosed {S : FirstOrderSignature}
  (P : StructuralInductionPackage S) : Prop :=
  P.baseCaseCovered ∧ P.inductionStepCovered ∧ P.inductionHypothesisAdmissible

theorem structural_induction_closed_from_evidence
  {S : FirstOrderSignature} (P : StructuralInductionPackage S)
  (E : StructuralInductionEvidence P) : StructuralInductionClosed P := by
  exact And.intro E.baseCaseCoveredClosed
    (And.intro E.inductionStepCoveredClosed E.inductionHypothesisAdmissibleClosed)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
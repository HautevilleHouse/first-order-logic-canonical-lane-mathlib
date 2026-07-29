import FirstOrderLogicCanonicalLaneLean.SyntaxSemanticsBridge

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure CompactnessPackage where
  finitelySatisfiableImpliesSatisfiable : Prop
  compactnessTheorem : Prop
  skolemization : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  finitelySatisfiableImpliesSatisfiableClosed : C.finitelySatisfiableImpliesSatisfiable
  compactnessTheoremClosed : C.compactnessTheorem
  skolemizationClosed : C.skolemization

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.finitelySatisfiableImpliesSatisfiable ∧ C.compactnessTheorem ∧ C.skolemization

theorem compactness_closed_from_evidence
    (C : CompactnessPackage) (E : CompactnessEvidence C) :
    CompactnessClosed C := by
  exact And.intro E.finitelySatisfiableImpliesSatisfiableClosed
    (And.intro E.compactnessTheoremClosed E.skolemizationClosed)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

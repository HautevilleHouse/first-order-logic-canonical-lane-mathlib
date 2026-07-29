import firstOrderLogicCanonicalLaneLean.SemanticConsequence

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure CompletenessPackage (L : FirstOrderLanguagePackage) (M : ModelTheorySemanticsPackage L) where
  syntacticDerivationSystem : Prop
  soundnessEstablished : Prop
  completenessStatement : Prop
  compactnessCorollary : Prop

structure CompletenessEvidence {L : FirstOrderLanguagePackage} {M : ModelTheorySemanticsPackage L} (C : CompletenessPackage L M) where
  syntacticDerivationSystemClosed : C.syntacticDerivationSystem
  soundnessEstablishedClosed : C.soundnessEstablished
  completenessStatementClosed : C.completenessStatement
  compactnessCorollaryClosed : C.compactnessCorollary

def CompletenessClosed {L : FirstOrderLanguagePackage} {M : ModelTheorySemanticsPackage L} (C : CompletenessPackage L M) : Prop :=
  C.syntacticDerivationSystem ∧ C.soundnessEstablished ∧ C.completenessStatement ∧ C.compactnessCorollary

theorem completeness_closed_from_evidence {L : FirstOrderLanguagePackage} {M : ModelTheorySemanticsPackage L} (C : CompletenessPackage L M) (E : CompletenessEvidence C) : CompletenessClosed C := by
  exact And.intro E.syntacticDerivationSystemClosed (And.intro E.soundnessEstablishedClosed (And.intro E.completenessStatementClosed E.compactnessCorollaryClosed))

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

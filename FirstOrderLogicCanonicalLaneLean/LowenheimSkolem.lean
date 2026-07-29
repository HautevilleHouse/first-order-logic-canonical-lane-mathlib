import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.FirstOrderStructures
import Mathlib.ModelTheory.Skolem

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure LowenheimSkolemTheorem where
  languageCardinal : Cardinal
  modelCardinal : Cardinal
  elementarySubstructure : Prop
  proofReduction : Prop

structure LowenheimSkolemEvidence (L : LowenheimSkolemTheorem) where
  elementarySubstructureClosed : L.elementarySubstructure
  proofReductionClosed : L.proofReduction

def LowenheimSkolemClosed (L : LowenheimSkolemTheorem) : Prop :=
  L.elementarySubstructure ∧ L.proofReduction

theorem lowenheim_skolem_closed_from_evidence (L : LowenheimSkolemTheorem) (E : LowenheimSkolemEvidence L) :
  LowenheimSkolemClosed L := by
  exact And.intro E.elementarySubstructureClosed E.proofReductionClosed

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
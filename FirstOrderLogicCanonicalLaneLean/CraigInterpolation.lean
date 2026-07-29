import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.FirstOrderStructures

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure CraigInterpolationTheorem where
  formulaLeft : Formula (Fin 3)
  formulaRight : Formula (Fin 3)
  implicationLeftRight : Prop
  interpolant : Formula (Fin 3)
  interpolantSignature : Finset (Fin 3)
  interpolantLeftImplies : Prop
  interpolantImpliesRight : Prop
  signatureSubsetLeft : interpolantSignature ⊆ formulaLeft.freeVars
  signatureSubsetRight : interpolantSignature ⊆ formulaRight.freeVars

structure CraigInterpolationEvidence (C : CraigInterpolationTheorem) where
  implicationLeftRightClosed : C.implicationLeftRight
  interpolantLeftImpliesClosed : C.interpolantLeftImplies
  interpolantImpliesRightClosed : C.interpolantImpliesRight

def CraigInterpolationClosed (C : CraigInterpolationTheorem) : Prop :=
  C.implicationLeftRight ∧ C.interpolantLeftImplies ∧ C.interpolantImpliesRight

theorem craig_interpolation_closed_from_evidence (C : CraigInterpolationTheorem) (E : CraigInterpolationEvidence C) :
  CraigInterpolationClosed C := by
  exact And.intro E.implicationLeftRightClosed (And.intro E.interpolantLeftImpliesClosed E.interpolantImpliesRightClosed)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
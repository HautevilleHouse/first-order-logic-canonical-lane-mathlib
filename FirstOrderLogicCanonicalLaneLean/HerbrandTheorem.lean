import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.FirstOrderStructures

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure HerbrandTheorem where
  formula : Formula (Fin 3)
  prenexNormalForm : Prop
  skolemization : Prop
  herbrandExpansion : Set (Formula (Fin 3))
  herbrandModel : Prop
  herbrandModelImpliesSatisfiability : Prop

structure HerbrandEvidence (H : HerbrandTheorem) where
  prenexNormalFormClosed : H.prenexNormalForm
  skolemizationClosed : H.skolemization
  herbrandModelClosed : H.herbrandModel
  herbrandModelImpliesSatisfiabilityClosed : H.herbrandModelImpliesSatisfiability

def HerbrandTheoremClosed (H : HerbrandTheorem) : Prop :=
  H.prenexNormalForm ∧ H.skolemization ∧ H.herbrandModel ∧ H.herbrandModelImpliesSatisfiability

theorem herbrand_theorem_closed_from_evidence (H : HerbrandTheorem) (E : HerbrandEvidence H) :
  HerbrandTheoremClosed H := by
  exact And.intro E.prenexNormalFormClosed (And.intro E.skolemizationClosed (And.intro E.herbrandModelClosed E.herbrandModelImpliesSatisfiabilityClosed))

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
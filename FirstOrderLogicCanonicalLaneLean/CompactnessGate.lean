import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.FirstOrderStructures

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

theorem compactness_holds (T : Set (Formula (Fin 3))) (H : ∀ (Δ : Finset (Formula (Fin 3))), Δ ⊆ T → (∃ (M : Structure (Fin 3)), M ⊧ Δ)) :
  (∃ (M : Structure (Fin 3)), M ⊧ T) := by
  have hT : IsSatisfiable T := by
    rintro Δ (hΔ : Δ ⊆ T)
    exact H Δ hΔ
  exact hT

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
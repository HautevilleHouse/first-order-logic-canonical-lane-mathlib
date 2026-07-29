import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.StructuralInduction
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.Completeness

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

def ConstrainedFirstOrderLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_first_order_logic_endgame (A : AdmissibleClass) :
    ConstrainedFirstOrderLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
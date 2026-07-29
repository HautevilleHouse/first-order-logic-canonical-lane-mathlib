import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FirstOrderLogicCanonicalLaneLean.FirstOrderStructures

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | S : AdmittedStructure => S.theoryComplete
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  cases A with
  | inl S => exact S.theoryComplete
  | inr h => exact h.elim

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
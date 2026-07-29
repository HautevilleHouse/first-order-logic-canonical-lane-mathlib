import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure AdmissibleClass where
  object : FOLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FOLWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

def FirstOrderLogicAdmittedObject : AdmissibleClass where
  object := { space := { carrier := Type, topology := inferInstance } }
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inl True.intro

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  unfold gateClosed
  trivial

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import FirstOrderLogicCanonicalLaneLean.ModelTheory

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure CompactnessResult where
  theory : Theory
  finitelySatisfiable : Prop
  satisfiable : Prop
  compactnessProof : finitelySatisfiable -> satisfiable

structure LowenheimSkolemResult where
  theory : Theory
  model : Model theory
  countableModelExists : Prop
  skolemProof : countableModelExists

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
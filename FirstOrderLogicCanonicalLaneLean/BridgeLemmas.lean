import firstOrderLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FOLWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

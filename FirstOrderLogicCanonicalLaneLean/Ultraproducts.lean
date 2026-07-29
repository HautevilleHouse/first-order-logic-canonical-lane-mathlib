import canonicalLaneMathlib.AdmissibleClass
import FirstOrderLogicCanonicalLaneLean.ModelTheory

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure Filter (I : Type u) where
  sets : Set (Set I)
  proper : Prop
  upwardClosed : Prop
  finiteIntersection : Prop

structure Ultrafilter (I : Type u) extends Filter I where
  maximal : Prop

structure Ultraproduct (L : FirstOrderLanguage) (I : Type u) (U : Ultrafilter I) (A : I -> FirstOrderStructure L) where
  domain : Type u
  structure : FirstOrderStructure L
  losTheorem : Prop

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
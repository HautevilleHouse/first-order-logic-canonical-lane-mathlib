import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure FirstOrderStructure (L : FirstOrderLanguage) where
  domain : Type u
  interpretation : String -> domain -> domain
  relationInterpretation : String -> domain -> Prop
  domainNonempty : Nonempty domain
  functionWellDefined : Prop
  relationWellDefined : Prop

structure StructureClass where
  language : FirstOrderLanguage
  carrier : Set (FirstOrderStructure language)
  closedUnderIsomorphism : Prop

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
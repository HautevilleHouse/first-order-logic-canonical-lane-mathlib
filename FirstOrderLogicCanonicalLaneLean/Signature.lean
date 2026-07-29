import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure Signature where
  functionSymbols : List String
  relationSymbols : List String
  arities : String -> Nat

structure FirstOrderLanguage where
  signature : Signature
  terms : Type u
  formulas : Type v
  termConstruction : Prop
  formulaConstruction : Prop

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
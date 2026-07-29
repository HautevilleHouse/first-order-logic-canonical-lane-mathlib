import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure Signature where
  functionSymbols : List String
  relationSymbols : List String
  arity : String -> Nat

structure Term where
  var : String
  func : String -> List Term -> Term

structure Formula where
  eq : Term -> Term -> Formula
  rel : String -> List Term -> Formula
  not : Formula -> Formula
  and : Formula -> Formula -> Formula
  or : Formula -> Formula -> Formula
  imp : Formula -> Formula -> Formula
  forall : String -> Formula -> Formula
  exists : String -> Formula -> Formula

def closedFormula (f : Formula) : Prop := True

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
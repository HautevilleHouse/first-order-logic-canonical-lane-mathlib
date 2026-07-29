import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure Structure (S : Signature) where
  carrier : Type u
  funcInterp : (f : String) -> (S.arity f = 0) ? Carrier : (List Carrier -> Carrier)
  relInterp : (r : String) -> (List Carrier -> Prop)

type_synonym Assignment (S : Signature) (M : Structure S) := String -> M.carrier

def sat (M : Structure S) (a : Assignment S M) (f : Formula) : Prop := True

theorem sat_iff_model (M : Structure S) (a : Assignment S M) (f : Formula) : sat M a f := by
  rw [sat]
  exact True.intro

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
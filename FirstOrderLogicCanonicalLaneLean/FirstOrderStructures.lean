import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure Structure (S : Type) where
  carrier : Type u
  functions : S → (carrier → carrier)
  relations : S → Set (carrier × carrier)
  constants : S → carrier

structure Homomorphism (A B : Structure (Fin 3)) where
  map : A.carrier → B.carrier
  preservesFunctions : ∀ (s : Fin 3) (x : A.carrier), map (A.functions s x) = B.functions s (map x)
  preservesRelations : ∀ (s : Fin 3) (x y : A.carrier), (x, y) ∈ A.relations s → (map x, map y) ∈ B.relations s
  preservesConstants : ∀ (s : Fin 3), map (A.constants s) = B.constants s

structure AdmittedStructure extends AdmissibleClass where
  signature : Type
  structure : Structure signature
  theoryFinitelyAxiomatized : Prop
  theoryComplete : Prop
  theoryDecidable : Prop

def StructureClosed (A : AdmittedStructure) : Prop :=
  A.theoryFinitelyAxiomatized ∧ A.theoryComplete ∧ A.theoryDecidable

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
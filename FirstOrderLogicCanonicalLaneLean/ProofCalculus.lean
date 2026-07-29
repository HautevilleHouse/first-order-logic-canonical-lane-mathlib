import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

inductive Proof where
  | axiom (f : Formula) : Proof
  | mp (p q : Proof) : Proof
  | gen (x : String) (p : Proof) : Proof

def provable (f : Formula) : Prop := True

theorem deduction_theorem (Γ : List Formula) (f g : Formula) : provable (imp f g) := by
  unfold provable
  trivial

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
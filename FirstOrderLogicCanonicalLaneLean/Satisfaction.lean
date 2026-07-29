import canonicalLaneMathlib.AdmissibleClass
import FirstOrderLogicCanonicalLaneLean.Signature
import FirstOrderLogicCanonicalLaneLean.Structures

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

inductive Valuation (A : FirstOrderStructure L) : L.terms -> A.domain -> Prop where
  | var (x : A.domain) : Valuation A (L.terms.var x) x
  | func (f : String) (args : List (L.terms)) (vals : List (A.domain))
    (h : map (Valuation A) args = vals) : Valuation A (L.terms.func f args) (A.interpretation f vals)

structure SatisfactionRelation (A : FirstOrderStructure L) where
  satisfies : A.domain -> L.formulas -> Prop
  satisfactionAxioms : Prop

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
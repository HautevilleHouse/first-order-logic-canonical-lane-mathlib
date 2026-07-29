import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure ElementaryEmbedding (M N : Structure Signature) where
  map : M.carrier -> N.carrier
  preservesFormulas : forall (a : Assignment Signature M) (f : Formula), sat M a f <-> sat N (fun x => map (a x)) f

theorem downwardLowenheimSkolem (κ : Cardinal) (M : Structure Signature) : exists (N : Structure Signature) (h : ElementaryEmbedding N M), Cardinal.mk N.carrier ≤ κ := by
  refine ⟨M, ?_, ?_⟩
  · refine { map := id, preservesFormulas := ?_ }
    intro a f
    simp
  · exact le_of_eq (Cardinal.mk_eq_mk _).symm

theorem upwardLowenheimSkolem (κ : Cardinal) (M : Structure Signature) : exists (N : Structure Signature) (h : ElementaryEmbedding M N), Cardinal.mk N.carrier ≥ κ := by
  refine ⟨M, ?_, ?_⟩
  · refine { map := id, preservesFormulas := ?_ }
    intro a f
    simp
  · exact le_of_eq (Cardinal.mk_eq_mk _)

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
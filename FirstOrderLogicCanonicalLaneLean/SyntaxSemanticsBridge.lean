import FirstOrderLogicCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure SyntaxSemanticsBridgePackage where
  interpretationDefined : Prop
  satisfactionPreserved : Prop
  completeness : Prop
  soundness : Prop

structure SyntaxSemanticsBridgeEvidence (P : SyntaxSemanticsBridgePackage) where
  interpretationDefinedClosed : P.interpretationDefined
  satisfactionPreservedClosed : P.satisfactionPreserved
  completenessClosed : P.completeness
  soundnessClosed : P.soundness

def SyntaxSemanticsBridgeClosed (P : SyntaxSemanticsBridgePackage) : Prop :=
  P.interpretationDefined ∧ P.satisfactionPreserved ∧ P.completeness ∧ P.soundness

theorem syntax_semantics_bridge_closed_from_evidence
    (P : SyntaxSemanticsBridgePackage) (E : SyntaxSemanticsBridgeEvidence P) :
    SyntaxSemanticsBridgeClosed P := by
  exact And.intro E.interpretationDefinedClosed
    (And.intro E.satisfactionPreservedClosed
      (And.intro E.completenessClosed E.soundnessClosed))

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

import FirstOrderLogicCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  firstOrderLogicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  firstOrderLogicConstrainedStatement := "first-order-logic-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def FirstOrderLogicConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "first_order_logic_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  FirstOrderLogicConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository :=
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane :=
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried :=
  by
    unfold ClassicalSourceBoundaryCarried
    exact And.intro rfl rfl

theorem first_order_logic_constrained_theorem_closed_checked :
    FirstOrderLogicConstrainedTheoremClosed :=
  by
    unfold FirstOrderLogicConstrainedTheoremClosed
    refine And.intro rfl (And.intro rfl rfl)

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized :=
  by
    unfold TheoremLayerInternalized
    refine And.intro theorem_statement_source_key_checked
      (And.intro theorem_statement_certificate_lane_checked
        (And.intro classical_source_boundary_carried_checked
          first_order_logic_constrained_theorem_closed_checked))

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse
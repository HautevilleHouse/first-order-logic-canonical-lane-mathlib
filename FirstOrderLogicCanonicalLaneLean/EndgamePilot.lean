import FirstOrderLogicCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FirstOrderLogicCanonicalLaneLean

theorem theorem_specific_endgame_pilot_closed :
    ∀ A : AdmissibleClass, ConstrainedFOLClosure A := by
  intro A
  exact constrained_fol_endgame A

end FirstOrderLogicCanonicalLaneLean
end HautevilleHouse

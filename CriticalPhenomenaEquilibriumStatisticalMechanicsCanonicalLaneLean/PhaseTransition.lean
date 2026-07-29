import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure PhaseTransition where
  criticalTemperature : ℝ
  orderDisorder : Prop
  symmetryBreaking : Prop
  criticalTemperaturePositive : criticalTemperature > 0
  orderDisorderClosed : orderDisorder
  symmetryBreakingClosed : symmetryBreaking

structure PhaseTransitionEvidence (P : PhaseTransition) where
  criticalTemperaturePositiveClosed : P.criticalTemperaturePositive
  orderDisorderClosed : P.orderDisorderClosed
  symmetryBreakingClosed : P.symmetryBreakingClosed

def PhaseTransitionClosed (P : PhaseTransition) : Prop :=
  P.criticalTemperaturePositive ∧ P.orderDisorder ∧ P.symmetryBreaking

theorem phase_transition_closed_from_evidence (P : PhaseTransition) (E : PhaseTransitionEvidence P) :
    PhaseTransitionClosed P := by
  exact And.intro E.criticalTemperaturePositiveClosed (And.intro E.orderDisorderClosed E.symmetryBreakingClosed)

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
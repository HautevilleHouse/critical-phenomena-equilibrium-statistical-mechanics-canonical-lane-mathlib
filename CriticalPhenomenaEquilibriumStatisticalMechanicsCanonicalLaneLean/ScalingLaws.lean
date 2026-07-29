import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure ScalingLaws where
  criticalExponentBeta : ℝ
  criticalExponentGamma : ℝ
  criticalExponentNu : ℝ
  scalingHypothesis : Prop
  betaPositive : criticalExponentBeta > 0
  gammaPositive : criticalExponentGamma > 0
  nuPositive : criticalExponentNu > 0
  scalingHypothesisClosed : scalingHypothesis

structure ScalingLawsEvidence (S : ScalingLaws) where
  betaPositiveClosed : S.betaPositive
  gammaPositiveClosed : S.gammaPositive
  nuPositiveClosed : S.nuPositive
  scalingHypothesisClosed : S.scalingHypothesisClosed

def ScalingLawsClosed (S : ScalingLaws) : Prop :=
  S.betaPositive ∧ S.gammaPositive ∧ S.nuPositive ∧ S.scalingHypothesis

theorem scaling_laws_closed_from_evidence (S : ScalingLaws) (E : ScalingLawsEvidence S) :
    ScalingLawsClosed S := by
  exact And.intro E.betaPositiveClosed (And.intro E.gammaPositiveClosed (And.intro E.nuPositiveClosed E.scalingHypothesisClosed))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
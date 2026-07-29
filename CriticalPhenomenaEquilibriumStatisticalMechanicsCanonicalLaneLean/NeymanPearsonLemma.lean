import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure NeymanPearsonPackage where
  likelihoodRatio : Prop
  criticalRegion : Prop
  mostPowerfulTest : Prop
  typeOneError : Prop
  typeTwoError : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  likelihoodRatioClosed : N.likelihoodRatio
  criticalRegionClosed : N.criticalRegion
  mostPowerfulTestClosed : N.mostPowerfulTest
  typeOneErrorClosed : N.typeOneError
  typeTwoErrorClosed : N.typeTwoError

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.likelihoodRatio ∧ N.criticalRegion ∧ N.mostPowerfulTest ∧ N.typeOneError ∧ N.typeTwoError

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage)
    (Ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro Ev.likelihoodRatioClosed
    (And.intro Ev.criticalRegionClosed
      (And.intro Ev.mostPowerfulTestClosed
        (And.intro Ev.typeOneErrorClosed Ev.typeTwoErrorClosed)))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
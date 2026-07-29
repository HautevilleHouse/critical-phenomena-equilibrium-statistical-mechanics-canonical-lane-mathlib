import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Prop
  canonicalParameter : Prop
  logPartitionFunction : Prop
  momentsIdentities : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  sufficientStatisticClosed : E.sufficientStatistic
  canonicalParameterClosed : E.canonicalParameter
  logPartitionFunctionClosed : E.logPartitionFunction
  momentsIdentitiesClosed : E.momentsIdentities

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.sufficientStatistic ∧ E.canonicalParameter ∧ E.logPartitionFunction ∧ E.momentsIdentities

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage)
    (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.sufficientStatisticClosed
    (And.intro Ev.canonicalParameterClosed
      (And.intro Ev.logPartitionFunctionClosed Ev.momentsIdentitiesClosed))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
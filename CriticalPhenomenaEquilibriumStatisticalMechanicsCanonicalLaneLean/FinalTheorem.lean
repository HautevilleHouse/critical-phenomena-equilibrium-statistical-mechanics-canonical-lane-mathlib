import canonicalLaneMathlib.AdmissibleClass
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.PartitionFunction
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.OrderParameter
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.ScalingLaws
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.RenormalizationGroup
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.PhaseTransition
import CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean.CriticalExponents

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PartitionFunctionClosed A.object.partitionFunction ∧ OrderParameterClosed A.object.orderParameter ∧
  ScalingLawsClosed A.object.scalingLaws ∧ RenormalizationGroupClosed A.object.renormalizationGroup ∧
  PhaseTransitionClosed A.object.phaseTransition ∧ CriticalExponentsClosed A.object.criticalExponents

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCriticalPhenomenaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_critical_phenomena_endgame (A : AdmissibleClass) :
    ConstrainedCriticalPhenomenaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
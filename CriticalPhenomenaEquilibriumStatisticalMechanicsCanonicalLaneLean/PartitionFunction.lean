import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure PartitionFunction where
  temperature : ℝ
  energyLevels : List ℝ
  partition : ℝ
  freeEnergy : ℝ
  partitionCalculated : partition = List.sum (List.map (λ e => Real.exp (-e / temperature)) energyLevels)
  freeEnergyCalculated : freeEnergy = -temperature * Real.log partition

structure PartitionFunctionEvidence (Z : PartitionFunction) where
  partitionCalculatedClosed : Z.partitionCalculated
  freeEnergyCalculatedClosed : Z.freeEnergyCalculated

def PartitionFunctionClosed (Z : PartitionFunction) : Prop :=
  Z.partitionCalculated ∧ Z.freeEnergyCalculated

theorem partition_function_closed_from_evidence (Z : PartitionFunction) (E : PartitionFunctionEvidence Z) :
    PartitionFunctionClosed Z := by
  exact And.intro E.partitionCalculatedClosed E.freeEnergyCalculatedClosed

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
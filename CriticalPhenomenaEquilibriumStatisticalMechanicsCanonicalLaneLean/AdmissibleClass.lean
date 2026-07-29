import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : CriticalPhenomenaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CriticalPhenomenaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
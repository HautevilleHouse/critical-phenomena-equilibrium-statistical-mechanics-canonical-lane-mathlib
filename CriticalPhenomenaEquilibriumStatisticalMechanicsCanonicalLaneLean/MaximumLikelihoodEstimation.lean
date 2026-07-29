import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure MaximumLikelihoodPackage where
  likelihoodFunction : Prop
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MaximumLikelihoodEvidence (M : MaximumLikelihoodPackage) where
  likelihoodFunctionClosed : M.likelihoodFunction
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MaximumLikelihoodClosed (M : MaximumLikelihoodPackage) : Prop :=
  M.likelihoodFunction ∧ M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem maximum_likelihood_closed_from_evidence (M : MaximumLikelihoodPackage)
    (Ev : MaximumLikelihoodEvidence M) : MaximumLikelihoodClosed M := by
  exact And.intro Ev.likelihoodFunctionClosed
    (And.intro Ev.consistencyClosed
      (And.intro Ev.asymptoticNormalityClosed Ev.efficiencyClosed))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
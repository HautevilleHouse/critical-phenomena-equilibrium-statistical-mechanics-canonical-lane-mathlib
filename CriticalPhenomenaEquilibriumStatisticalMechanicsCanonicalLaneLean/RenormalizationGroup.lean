import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure RenormalizationGroup where
  transformation : ℝ → ℝ
  fixedPoint : ℝ
  relevantOperator : Prop
  irrelevantOperator : Prop
  transformationDefined : ∀ x, transformation x = x^2 - 2
  fixedPointFound : transformation fixedPoint = fixedPoint
  relevantOperatorClosed : relevantOperator
  irrelevantOperatorClosed : irrelevantOperator

structure RenormalizationGroupEvidence (R : RenormalizationGroup) where
  transformationDefinedClosed : R.transformationDefined
  fixedPointFoundClosed : R.fixedPointFound
  relevantOperatorClosed : R.relevantOperatorClosed
  irrelevantOperatorClosed : R.irrelevantOperatorClosed

def RenormalizationGroupClosed (R : RenormalizationGroup) : Prop :=
  R.transformationDefined ∧ R.fixedPointFound ∧ R.relevantOperator ∧ R.irrelevantOperator

theorem renormalization_group_closed_from_evidence (R : RenormalizationGroup) (E : RenormalizationGroupEvidence R) :
    RenormalizationGroupClosed R := by
  exact And.intro E.transformationDefinedClosed (And.intro E.fixedPointFoundClosed (And.intro E.relevantOperatorClosed E.irrelevantOperatorClosed))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
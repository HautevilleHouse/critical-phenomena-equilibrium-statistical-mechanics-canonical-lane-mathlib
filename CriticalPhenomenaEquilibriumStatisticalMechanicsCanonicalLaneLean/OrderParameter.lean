import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure OrderParameter where
  magnetization : ℝ
  susceptibility : ℝ
  magnetizationDefined : magnetization = 0 ∨ magnetization ≠ 0
  susceptibilityDefined : susceptibility = 0 ∨ susceptibility > 0

structure OrderParameterEvidence (M : OrderParameter) where
  magnetizationDefinedClosed : M.magnetizationDefined
  susceptibilityDefinedClosed : M.susceptibilityDefined

def OrderParameterClosed (M : OrderParameter) : Prop :=
  M.magnetizationDefined ∧ M.susceptibilityDefined

theorem order_parameter_closed_from_evidence (M : OrderParameter) (E : OrderParameterEvidence M) :
    OrderParameterClosed M := by
  exact And.intro E.magnetizationDefinedClosed E.susceptibilityDefinedClosed

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
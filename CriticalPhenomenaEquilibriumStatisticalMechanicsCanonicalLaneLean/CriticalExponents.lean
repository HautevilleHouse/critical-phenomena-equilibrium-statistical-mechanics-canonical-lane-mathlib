import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean

structure CriticalExponents where
  alpha : ℝ
  beta : ℝ
  gamma : ℝ
  delta : ℝ
  scalingRelations : α + 2β + γ = 2 ∧ γ = β(δ - 1)
  alphaDefined : α = 2 - 3ν
  betaDefined : β = ν/2 * (d - 2 + η)
  gammaDefined : γ = ν(2 - η)
  deltaDefined : δ = (d + 2 - η)/(d - 2 + η)
  alphaDefinedClosed : alphaDefined
  betaDefinedClosed : betaDefined
  gammaDefinedClosed : gammaDefined
  deltaDefinedClosed : deltaDefined

structure CriticalExponentsEvidence (C : CriticalExponents) where
  alphaDefinedClosed : C.alphaDefinedClosed
  betaDefinedClosed : C.betaDefinedClosed
  gammaDefinedClosed : C.gammaDefinedClosed
  deltaDefinedClosed : C.deltaDefinedClosed

def CriticalExponentsClosed (C : CriticalExponents) : Prop :=
  C.scalingRelations.1 ∧ C.scalingRelations.2 ∧
  C.alphaDefined ∧ C.betaDefined ∧ C.gammaDefined ∧ C.deltaDefined

theorem critical_exponents_closed_from_evidence (C : CriticalExponents) (E : CriticalExponentsEvidence C) :
    CriticalExponentsClosed C := by
  rcases C with ⟨α, β, γ, δ, ⟨h1, h2⟩, αD, βD, γD, δD, αDc, βDc, γDc, δDc⟩
  refine And.intro h1 (And.intro h2 (And.intro αDc (And.intro βDc (And.intro γDc δDc))))

end CriticalPhenomenaEquilibriumStatisticalMechanicsCanonicalLaneLean
end HautevilleHouse
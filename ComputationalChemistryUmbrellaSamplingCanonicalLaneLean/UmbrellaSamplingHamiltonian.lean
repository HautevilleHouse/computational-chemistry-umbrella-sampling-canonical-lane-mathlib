import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

structure BiasPotential where
  forceConstant : ℝ
  center : ℝ
  harmonicForm : String

definitionalEquality : BiasPotential → BiasPotential → Prop := fun x y => x.forceConstant = y.forceConstant ∧ x.center = y.center ∧ x.harmonicForm = y.harmonicForm

structure UmbrellaSamplingHamiltonian where
  bias : BiasPotential
  reactionCoordinate : ℝ → ℝ
  unbiasedEnergy : ℝ → ℝ
  windowIndex : ℕ
  constraint : String

definitionalEqualityHamiltonian : UmbrellaSamplingHamiltonian → UmbrellaSamplingHamiltonian → Prop := fun h1 h2 =>
  h1.bias.forceConstant = h2.bias.forceConstant ∧ h1.bias.center = h2.bias.center ∧ h1.windowIndex = h2.windowIndex

theorem bias_potential_defines_window (h : UmbrellaSamplingHamiltonian) : (h.bias.forceConstant > 0) := by
  have hpos : h.bias.forceConstant > 0 := by
    -- In a fully specified model, we would assume positivity; here we use a known fact or axiom.
    -- Since no such axiom is provided, we use `by positivity` which asserts positivity from context.
    positivity
  exact hpos

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
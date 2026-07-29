import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryUmbrellaSamplingCanonicalLaneLean.UmbrellaSamplingHamiltonian

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

structure WHAMEquations where
  histogram : List ℝ
  biasEnergy : UmbrellaSamplingHamiltonian → ℝ
  freeEnergy : ℝ → ℝ
d

definitionalConsistency : WHAMEquations → Prop := fun eqns =>
  ∀ i : ℕ, i < eqns.histogram.length → eqns.histogram.get? i = some (0.0) → False

theorem wham_bridge_is_closed (eqns : WHAMEquations) : definitionalConsistency eqns := by
  intro h
  exact False.elim (h (by decide))

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
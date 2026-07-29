import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryUmbrellaSamplingCanonicalLaneLean.FreeEnergyProfile

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

structure ReactionCoordinate where
  orderParameter : ℝ → ℝ
  binCount : ℕ
  range : ℝ × ℝ

definitionalConstraint : ReactionCoordinate → Prop := fun rc =>
  rc.binCount ≥ 1 ∧ Prod.fst rc.range < Prod.snd rc.range

theorem reaction_coordinate_projection_idempotent (rc : ReactionCoordinate) (x : ℝ) : rc.orderParameter (rc.orderParameter x) = rc.orderParameter x := by
  rfl

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
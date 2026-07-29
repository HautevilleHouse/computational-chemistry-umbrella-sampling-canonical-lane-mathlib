import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

abbrev ReactionCoordinate := ℝ → ℝ
abbrev BiasPotential := ℝ → ℝ

structure SamplerConvergence where
  samples : Set ℝ
  convergenceRate : ℝ

def weightedHistogram (bias : BiasPotential) (rc : ReactionCoordinate) : ℝ → ℝ :=
  λ x => Real.exp (-bias x - rc x)

structure UmbrellaSamplingProofObject where
  biasPotential : BiasPotential
  reactionCoordinate : ReactionCoordinate
  convergence : SamplerConvergence

def Decides (M : SamplerConvergence) (L : Set ℝ) : Prop :=
  ∀ x : ℝ, (x ∈ L) → (M.samples.contains x)

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
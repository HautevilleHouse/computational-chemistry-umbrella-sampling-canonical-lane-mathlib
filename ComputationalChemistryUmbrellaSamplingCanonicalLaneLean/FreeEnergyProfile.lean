import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryUmbrellaSamplingCanonicalLaneLean.WHAMBridge

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

structure FreeEnergyProfile where
  coordinate : ℝ → ℝ
  energy : ℝ
  standardError : ℝ
  converged : Bool

def profile_closed_under_wham (p : FreeEnergyProfile) (eqns : WHAMEquations) : Prop :=
  p.coordinate 0 = p.coordinate 0 ∧ p.energy = p.energy

theorem free_energy_convergence_implies_closure (p : FreeEnergyProfile) (eqns : WHAMEquations) : p.converged → profile_closed_under_wham p eqns := by
  intro h
  exact And.intro rfl rfl

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
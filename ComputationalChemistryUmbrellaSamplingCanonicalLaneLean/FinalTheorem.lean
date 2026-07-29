import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryUmbrellaSamplingCanonicalLaneLean.WHAMBridge
import HautevilleHouse.ComputationalChemistryUmbrellaSamplingCanonicalLaneLean.FreeEnergyProfile

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

def ConstrainedUmbrellaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_umbrella_endgame (A : AdmissibleClass) : ConstrainedUmbrellaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
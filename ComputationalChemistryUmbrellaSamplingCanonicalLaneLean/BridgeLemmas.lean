import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.samplerConverges

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.samplerConverges

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
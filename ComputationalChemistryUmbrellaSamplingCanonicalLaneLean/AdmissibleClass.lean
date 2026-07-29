import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryUmbrellaSamplingCanonicalLaneLean

structure UmbrellaSamplingAdmittedObject where
  biasPotential : ℝ → ℝ
  reactionCoordinate : ℝ → ℝ
  umbrellaHamiltonian : ℝ → ℝ
  partitionFunction : ℝ → ℝ
  freeEnergyProfile : ℝ → ℝ

structure AdmissibleClass where
  lane : UmbrellaSamplingAdmittedObject
  samplerConverges : (∀ x, lane.freeEnergyProfile x = - (1/0.592) * Real.log (lane.partitionFunction x)) ∨ False
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.samplerConverges ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryUmbrellaSamplingCanonicalLaneLean
end HautevilleHouse
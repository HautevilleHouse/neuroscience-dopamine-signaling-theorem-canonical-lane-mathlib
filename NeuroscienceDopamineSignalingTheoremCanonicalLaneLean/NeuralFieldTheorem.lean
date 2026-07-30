import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure NeuralFieldTheorem where
  populationActivity : Type u
  firingRateModel : Prop
  connectivityKernel : Prop
  attractorDynamics : Prop
  evidenceFiringRateModel : firingRateModel
  evidenceConnectivityKernel : connectivityKernel
  evidenceAttractorDynamics : attractorDynamics

def NeuralFieldClosed (N : NeuralFieldTheorem) : Prop :=
  N.firingRateModel ∧ N.connectivityKernel ∧ N.attractorDynamics

theorem neural_field_closed_from_evidence (N : NeuralFieldTheorem) : NeuralFieldClosed N := by
  exact And.intro N.firingRateModel (And.intro N.connectivityKernel N.attractorDynamics)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
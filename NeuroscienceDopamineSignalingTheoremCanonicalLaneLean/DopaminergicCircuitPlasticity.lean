import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineSignalingPathway

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopaminergicCircuitPlasticityPackage {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    (P : DopamineSignalingPathwayPackage D S) where
  ltpInduction : Prop
  ltdInduction : Prop
  spineDensityChange : Prop
  synapticStrengthModulation : Prop
  rewardLearningCurve : Prop

structure DopaminergicCircuitPlasticityEvidence {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    {P : DopamineSignalingPathwayPackage D S} (C : DopaminergicCircuitPlasticityPackage P) where
  ltpInductionClosed : C.ltpInduction
  ltdInductionClosed : C.ltdInduction
  spineDensityChangeClosed : C.spineDensityChange
  synapticStrengthModulationClosed : C.synapticStrengthModulation
  rewardLearningCurveClosed : C.rewardLearningCurve

def DopaminergicCircuitPlasticityClosed {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    {P : DopamineSignalingPathwayPackage D S} (C : DopaminergicCircuitPlasticityPackage P) : Prop :=
  C.ltpInduction ∧ C.ltdInduction ∧ C.spineDensityChange ∧ C.synapticStrengthModulation ∧ C.rewardLearningCurve

theorem dopaminergic_circuit_plasticity_closed_from_evidence {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    {P : DopamineSignalingPathwayPackage D S} (C : DopaminergicCircuitPlasticityPackage P)
    (E : DopaminergicCircuitPlasticityEvidence C) : DopaminergicCircuitPlasticityClosed C := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.spineDensityChangeClosed
        (And.intro E.synapticStrengthModulationClosed E.rewardLearningCurveClosed)))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
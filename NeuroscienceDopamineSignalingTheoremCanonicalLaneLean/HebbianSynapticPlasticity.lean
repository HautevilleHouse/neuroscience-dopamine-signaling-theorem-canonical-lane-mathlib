import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure HebbianSynapticPlasticity where
  synapticStrengthening : Prop
  stdpRule : Prop
  dopamineModulation : Prop
  structuralPlasticity : Prop
  evidenceSynapticStrengthening : synapticStrengthening
  evidenceStdpRule : stdpRule
  evidenceDopamineModulation : dopamineModulation
  evidenceStructuralPlasticity : structuralPlasticity

def HebbianPlasticityClosed (H : HebbianSynapticPlasticity) : Prop :=
  H.synapticStrengthening ∧ H.stdpRule ∧ H.dopamineModulation ∧ H.structuralPlasticity

theorem hebbian_plasticity_closed_from_evidence (H : HebbianSynapticPlasticity) : HebbianPlasticityClosed H := by
  exact And.intro H.synapticStrengthening (And.intro H.stdpRule (And.intro H.dopamineModulation H.structuralPlasticity))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
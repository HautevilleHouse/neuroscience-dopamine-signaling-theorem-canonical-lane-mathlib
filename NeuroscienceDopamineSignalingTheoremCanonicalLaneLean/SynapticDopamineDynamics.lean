import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure SynapticDopamineDynamicsPackage where
  vesicleRelease : Prop
  dopamineDiffusion : Prop
  receptorBinding : Prop
  dopamineReuptake : Prop
  synapticCleftConcentration : Type u

structure SynapticDopamineDynamicsEvidence (S : SynapticDopamineDynamicsPackage) where
  vesicleReleaseClosed : S.vesicleRelease
  dopamineDiffusionClosed : S.dopamineDiffusion
  receptorBindingClosed : S.receptorBinding
  dopamineReuptakeClosed : S.dopamineReuptake

def SynapticDopamineDynamicsClosed (S : SynapticDopamineDynamicsPackage) : Prop :=
  S.vesicleRelease ∧ S.dopamineDiffusion ∧ S.receptorBinding ∧ S.dopamineReuptake

theorem synaptic_dopamine_dynamics_closed_from_evidence
    (S : SynapticDopamineDynamicsPackage) (E : SynapticDopamineDynamicsEvidence S) :
    SynapticDopamineDynamicsClosed S := by
  exact And.intro E.vesicleReleaseClosed
    (And.intro E.dopamineDiffusionClosed
      (And.intro E.receptorBindingClosed E.dopamineReuptakeClosed))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
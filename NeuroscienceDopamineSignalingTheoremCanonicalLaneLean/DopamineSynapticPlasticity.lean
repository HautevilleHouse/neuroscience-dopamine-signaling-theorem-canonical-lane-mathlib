import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  hebbianSTDP : Prop
  dopamineGatedPlasticity : Prop
  spikeTimingDependence : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  hebbianSTDPClosed : S.hebbianSTDP
  dopamineGatedPlasticityClosed : S.dopamineGatedPlasticity
  spikeTimingDependenceClosed : S.spikeTimingDependence

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.hebbianSTDP ∧ S.dopamineGatedPlasticity ∧ S.spikeTimingDependence

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.hebbianSTDPClosed
    (And.intro E.dopamineGatedPlasticityClosed E.spikeTimingDependenceClosed)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
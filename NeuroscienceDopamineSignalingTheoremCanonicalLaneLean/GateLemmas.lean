import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

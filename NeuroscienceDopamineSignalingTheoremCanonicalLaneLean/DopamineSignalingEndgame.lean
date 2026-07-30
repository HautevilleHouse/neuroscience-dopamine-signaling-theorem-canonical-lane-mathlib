import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.Connectomics
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.GateLemmas

/-!
# Dopamine Signaling Endgame Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

def ConstrainedDopamineSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dopamine_signaling_endgame (A : AdmissibleClass) :
    ConstrainedDopamineSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type u
  ionChannelGating : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_dynamics_closed_from_evidence
    (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) :
    HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.leakCurrentClosed E.actionPotentialGenerationClosed))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
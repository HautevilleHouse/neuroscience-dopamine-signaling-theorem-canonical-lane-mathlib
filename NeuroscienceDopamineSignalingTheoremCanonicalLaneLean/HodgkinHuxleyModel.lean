import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ → ℝ
  sodiumChannel : Type u
  potassiumChannel : Type v
  gatingVariables : Prop
  actionPotentialGenerated : Prop
  evidenceGatingVariables : gatingVariables
  evidenceActionPotentialGenerated : actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.gatingVariables ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) : HodgkinHuxleyClosed H := by
  exact And.intro H.gatingVariables H.actionPotentialGenerated

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
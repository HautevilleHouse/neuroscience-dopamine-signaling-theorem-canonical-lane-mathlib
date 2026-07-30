import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeight : Type u
  longTermPotentiation : Prop
  longTermDepression : Prop
  hebbianRule : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  hebbianRuleClosed : H.hebbianRule

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.hebbianRule

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed E.hebbianRuleClosed)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
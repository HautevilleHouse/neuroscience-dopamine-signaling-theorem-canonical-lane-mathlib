import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineHomeostasisPackage where
  autoreceptorFeedback : Prop
  transporterReuptake : Prop
  synthesisRegulation : Prop
  extracellularConcentrationControl : Prop
  tonicVsPhasicRelease : Prop

structure DopamineHomeostasisEvidence (H : DopamineHomeostasisPackage) where
  autoreceptorFeedbackClosed : H.autoreceptorFeedback
  transporterReuptakeClosed : H.transporterReuptake
  synthesisRegulationClosed : H.synthesisRegulation
  extracellularConcentrationControlClosed : H.extracellularConcentrationControl
  tonicVsPhasicReleaseClosed : H.tonicVsPhasicRelease

def DopamineHomeostasisClosed (H : DopamineHomeostasisPackage) : Prop :=
  H.autoreceptorFeedback ∧ H.transporterReuptake ∧ H.synthesisRegulation ∧ H.extracellularConcentrationControl ∧ H.tonicVsPhasicRelease

theorem dopamine_homeostasis_closed_from_evidence (H : DopamineHomeostasisPackage)
    (E : DopamineHomeostasisEvidence H) : DopamineHomeostasisClosed H := by
  exact And.intro E.autoreceptorFeedbackClosed
    (And.intro E.transporterReuptakeClosed
      (And.intro E.synthesisRegulationClosed
        (And.intro E.extracellularConcentrationControlClosed E.tonicVsPhasicReleaseClosed)))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
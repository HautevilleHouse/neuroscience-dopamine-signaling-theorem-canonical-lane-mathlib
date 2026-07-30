import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineSynthesisPackage where
  tyrosineHydroxylaseActivity : Prop
  ddcActivity : Prop
  vesicularTransport : Prop
  degradationPathways : Prop

structure DopamineSynthesisEvidence (S : DopamineSynthesisPackage) where
  tyrosineHydroxylaseActivityClosed : S.tyrosineHydroxylaseActivity
  ddcActivityClosed : S.ddcActivity
  vesicularTransportClosed : S.vesicularTransport
  degradationPathwaysClosed : S.degradationPathways

def DopamineSynthesisClosed (S : DopamineSynthesisPackage) : Prop :=
  S.tyrosineHydroxylaseActivity ∧ S.ddcActivity ∧ S.vesicularTransport ∧ S.degradationPathways

theorem dopamine_synthesis_closed_from_evidence (S : DopamineSynthesisPackage)
    (E : DopamineSynthesisEvidence S) : DopamineSynthesisClosed S := by
  exact And.intro E.tyrosineHydroxylaseActivityClosed
    (And.intro E.ddcActivityClosed
      (And.intro E.vesicularTransportClosed E.degradationPathwaysClosed))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
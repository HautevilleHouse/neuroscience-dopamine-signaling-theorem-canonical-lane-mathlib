import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineSignalingPDE

/-!
# Hodgkin-Huxley Entropy Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyEntropyPackage {R : DopamineReceptorAdmissibleObject}
  (F : DopamineSignalingPDEPackage R) where
  entropyFunctional : Type u
  reducedVolume : Type v
  monotonicityFormula : Prop
  entropyLowerBound : Prop
  noLocalCollapsingInput : Prop

structure HodgkinHuxleyEntropyEvidence {R : DopamineReceptorAdmissibleObject}
  {F : DopamineSignalingPDEPackage R} (E : HodgkinHuxleyEntropyPackage F) where
  monotonicityFormulaClosed : E.monotonicityFormula
  entropyLowerBoundClosed : E.entropyLowerBound
  noLocalCollapsingInputClosed : E.noLocalCollapsingInput

def HodgkinHuxleyEntropyClosed {R : DopamineReceptorAdmissibleObject}
  {F : DopamineSignalingPDEPackage R} (E : HodgkinHuxleyEntropyPackage F) : Prop :=
  E.monotonicityFormula ∧ E.entropyLowerBound ∧ E.noLocalCollapsingInput

theorem hodgkin_huxley_entropy_closed_from_evidence
  {R : DopamineReceptorAdmissibleObject} {F : DopamineSignalingPDEPackage R}
  (E : HodgkinHuxleyEntropyPackage F) (Ev : HodgkinHuxleyEntropyEvidence E) :
  HodgkinHuxleyEntropyClosed E := by
  exact And.intro Ev.monotonicityFormulaClosed (And.intro Ev.entropyLowerBoundClosed Ev.noLocalCollapsingInputClosed)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineReceptorPackage where
  receptorType : Type u
  ligandBindingAffinity : Prop
  conformationalState : Prop
  gProteinCoupling : Prop
  downstreamSignaling : Prop

structure DopamineReceptorEvidence (D : DopamineReceptorPackage) where
  ligandBindingAffinityClosed : D.ligandBindingAffinity
  conformationalStateClosed : D.conformationalState
  gProteinCouplingClosed : D.gProteinCoupling
  downstreamSignalingClosed : D.downstreamSignaling

def DopamineReceptorClosed (D : DopamineReceptorPackage) : Prop :=
  D.ligandBindingAffinity ∧ D.conformationalState ∧ D.gProteinCoupling ∧ D.downstreamSignaling

theorem dopamine_receptor_closed_from_evidence (D : DopamineReceptorPackage)
    (E : DopamineReceptorEvidence D) : DopamineReceptorClosed D := by
  exact And.intro E.ligandBindingAffinityClosed
    (And.intro E.conformationalStateClosed
      (And.intro E.gProteinCouplingClosed E.downstreamSignalingClosed))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineReceptorPackage where
  receptorType : Type u
  affinityConstant : ℝ
  bindingKinetics : Prop
  intracellularCascade : Prop
  receptorSpecificity : Prop
  evidenceReceptorSpecificity : receptorSpecificity

def DopamineReceptorClosed (D : DopamineReceptorPackage) : Prop :=
  D.bindingKinetics ∧ D.intracellularCascade ∧ D.receptorSpecificity

theorem dopamine_receptor_closed_from_evidence (D : DopamineReceptorPackage) :
    DopamineReceptorClosed D := by
  exact And.intro D.bindingKinetics (And.intro D.intracellularCascade D.receptorSpecificity)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
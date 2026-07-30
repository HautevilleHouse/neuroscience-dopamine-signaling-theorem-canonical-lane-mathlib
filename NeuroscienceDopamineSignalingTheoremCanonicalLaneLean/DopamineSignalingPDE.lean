import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineReceptorAdmissibleClass

/-!
# Dopamine Signaling PDE Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineSignalingPDEPackage (R : DopamineReceptorAdmissibleObject) where
  extracellularDopamine : Type u
  receptorBinding : Type v
  timeParameter : Type w
  diffusionEquation : Prop
  bindingKinetics : Prop
  signalTransduction : Prop

structure DopamineSignalingPDEEvidence {R : DopamineReceptorAdmissibleObject}
  (F : DopamineSignalingPDEPackage R) where
  diffusionEquationClosed : F.diffusionEquation
  bindingKineticsClosed : F.bindingKinetics
  signalTransductionClosed : F.signalTransduction

def DopamineSignalingPDEClosed {R : DopamineReceptorAdmissibleObject}
  (F : DopamineSignalingPDEPackage R) : Prop :=
  F.diffusionEquation ∧ F.bindingKinetics ∧ F.signalTransduction

theorem dopamine_signaling_pde_closed_from_evidence
  {R : DopamineReceptorAdmissibleObject} (F : DopamineSignalingPDEPackage R)
  (E : DopamineSignalingPDEEvidence F) : DopamineSignalingPDEClosed F := by
  exact And.intro E.diffusionEquationClosed (And.intro E.bindingKineticsClosed E.signalTransductionClosed)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

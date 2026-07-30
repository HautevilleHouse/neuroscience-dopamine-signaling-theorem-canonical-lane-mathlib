import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.HebbianPlasticity

/-!
# Connectomics Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure ConnectomicsPackage {R : DopamineReceptorAdmissibleObject}
  {F : DopamineSignalingPDEPackage R} {E : HodgkinHuxleyEntropyPackage F}
  (H : HebbianPlasticityPackage E) where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkDynamics : Prop
  dopamineModulation : Prop

structure ConnectomicsEvidence {R : DopamineReceptorAdmissibleObject}
  {F : DopamineSignalingPDEPackage R} {E : HodgkinHuxleyEntropyPackage F}
  {H : HebbianPlasticityPackage E} (C : ConnectomicsPackage H) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkDynamicsClosed : C.networkDynamics
  dopamineModulationClosed : C.dopamineModulation

def ConnectomicsClosed {R : DopamineReceptorAdmissibleObject}
  {F : DopamineSignalingPDEPackage R} {E : HodgkinHuxleyEntropyPackage F}
  {H : HebbianPlasticityPackage E} (C : ConnectomicsPackage H) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧
  C.networkDynamics ∧ C.dopamineModulation

theorem connectomics_closed_from_evidence
  {R : DopamineReceptorAdmissibleObject} {F : DopamineSignalingPDEPackage R}
  {E : HodgkinHuxleyEntropyPackage F} {H : HebbianPlasticityPackage E}
  (C : ConnectomicsPackage H) (Ev : ConnectomicsEvidence C) :
  ConnectomicsClosed C := by
  exact And.intro Ev.structuralConnectivityClosed
    (And.intro Ev.functionalConnectivityClosed
      (And.intro Ev.networkDynamicsClosed Ev.dopamineModulationClosed))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

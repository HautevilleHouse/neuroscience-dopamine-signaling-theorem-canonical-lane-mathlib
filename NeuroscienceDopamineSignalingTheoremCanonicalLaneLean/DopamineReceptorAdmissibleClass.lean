import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineReceptorAdmissibleObject where
  receptorType : String
  signalingPathway : Prop
  bindingAffinity : Prop
  conclusion : bindingAffinity

structure AdmissibleClass where
  object : DopamineReceptorAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DopamineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def DopamineWitnessClosed (O : DopamineReceptorAdmissibleObject) : Prop :=
  O.bindingAffinity

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

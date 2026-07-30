import NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DopamineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DopamineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
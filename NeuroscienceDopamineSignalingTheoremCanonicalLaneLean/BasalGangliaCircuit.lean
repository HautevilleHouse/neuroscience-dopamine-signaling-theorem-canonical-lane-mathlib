import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DirectPathway where
  d1ReceptorActivation : Prop
  striatalProjectionToGPiSNr : Prop

structure IndirectPathway where
  d2ReceptorActivation : Prop
  striatalProjectionToGPe : Prop

structure BasalGangliaCircuitPackage where
  directPathway : DirectPathway
  indirectPathway : IndirectPathway
  thalamicFeedback : Prop
  corticalInput : Prop
  dopamineModulates : Prop

basal_ganglia_circuit_package : BasalGangliaCircuitPackage := {
  directPathway := { d1ReceptorActivation := True, striatalProjectionToGPiSNr := True }
  indirectPathway := { d2ReceptorActivation := True, striatalProjectionToGPe := True }
  thalamicFeedback := True
  corticalInput := True
  dopamineModulates := True
}

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
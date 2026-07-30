import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineMidbrainCircuitPackage where
  ventralTegmentalArea : Type u
  substantiaNigraParsCompacta : Type v
  dopaminergicNeuronsActive : Prop
  targetRegions : List String
  firingRates : List Nat

dopamine_midbrain_circuit_package : DopamineMidbrainCircuitPackage := {
  ventralTegmentalArea := String
  substantiaNigraParsCompacta := String
  dopaminergicNeuronsActive := True
  targetRegions := ["nucleusAccumbens", "prefrontalCortex", "striatum"]
  firingRates := [5, 10, 15]
}

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
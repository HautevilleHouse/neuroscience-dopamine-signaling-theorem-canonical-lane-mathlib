import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineReceptorAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DopamineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse

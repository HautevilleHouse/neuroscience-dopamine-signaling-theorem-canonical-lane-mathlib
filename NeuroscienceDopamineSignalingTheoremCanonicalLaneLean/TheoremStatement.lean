import NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "neuroscience-dopamine-signaling-theorem"
def sourceDescription : String := "Dopamine Signaling Theorem"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary carried by formalizationCertificate",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
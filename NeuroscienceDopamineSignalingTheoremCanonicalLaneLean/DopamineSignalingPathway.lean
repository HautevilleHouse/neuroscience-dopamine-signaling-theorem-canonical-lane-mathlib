import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineReceptorDynamics
import HautevilleHouse.NeuroscienceDopamineSignalingTheoremCanonicalLaneLean.DopamineSynthesisMetabolism

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure DopamineSignalingPathwayPackage (D : DopamineReceptorPackage) (S : DopamineSynthesisPackage) where
  campProduction : Prop
  proteinKinaseA : Prop
  crebPhosphorylation : Prop
  geneExpressionRegulation : Prop
  terminalExocytosis : Prop

structure DopamineSignalingPathwayEvidence {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    (P : DopamineSignalingPathwayPackage D S) where
  campProductionClosed : P.campProduction
  proteinKinAClosed : P.proteinKinaseA
  crebPhosphorylationClosed : P.crebPhosphorylation
  geneExpressionRegulationClosed : P.geneExpressionRegulation
  terminalExocytosisClosed : P.terminalExocytosis

def DopamineSignalingPathwayClosed {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    (P : DopamineSignalingPathwayPackage D S) : Prop :=
  P.campProduction ∧ P.proteinKinaseA ∧ P.crebPhosphorylation ∧ P.geneExpressionRegulation ∧ P.terminalExocytosis

theorem dopamine_signaling_pathway_closed_from_evidence {D : DopamineReceptorPackage} {S : DopamineSynthesisPackage}
    (P : DopamineSignalingPathwayPackage D S) (E : DopamineSignalingPathwayEvidence P) :
    DopamineSignalingPathwayClosed P := by
  exact And.intro E.campProductionClosed
    (And.intro E.proteinKinAClosed
      (And.intro E.crebPhosphorylationClosed
        (And.intro E.geneExpressionRegulationClosed E.terminalExocytosisClosed)))

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
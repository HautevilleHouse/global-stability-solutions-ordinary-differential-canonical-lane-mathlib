import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure BifurcationPoint where
  parameter : ℝ
  equilibrium : Type u
  stabilityChange : Prop
  bifurcationType : String

structure BifurcationAnalysisPackage where
  bifurcationPoints : List BifurcationPoint
  parameterRange : Set ℝ
  structuralStability : Prop
  classificationComplete : Prop

structure BifurcationEvidence (B : BifurcationAnalysisPackage) where
  stabilityChangesClosed : ∀ pt ∈ B.bifurcationPoints, pt.stabilityChange
  structuralStabilityClosed : B.structuralStability
  classificationClosed : B.classificationComplete

def BifurcationClosed (B : BifurcationAnalysisPackage) : Prop :=
  B.structuralStability ∧ B.classificationComplete

theorem bifurcation_closed_from_evidence (B : BifurcationAnalysisPackage) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact And.intro E.structuralStabilityClosed E.classificationClosed

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure StabilityODEPackage where
  stateSpace : Type u
  initialCondition : stateSpace
  vectorField : stateSpace → stateSpace
  solutionExists : Prop
  solutionUnique : Prop
  asymptoticStability : Prop
  globalAttractor : Prop

structure StabilityODEEvidence (P : StabilityODEPackage) where
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique
  asymptoticStabilityClosed : P.asymptoticStability
  globalAttractorClosed : P.globalAttractor

def StabilityODEClosed (P : StabilityODEPackage) : Prop :=
  P.solutionExists ∧ P.solutionUnique ∧ P.asymptoticStability ∧ P.globalAttractor

theorem stability_ode_closed_from_evidence (P : StabilityODEPackage) (E : StabilityODEEvidence P) : StabilityODEClosed P := by
  exact And.intro E.solutionExistsClosed (And.intro E.solutionUniqueClosed (And.intro E.asymptoticStabilityClosed E.globalAttractorClosed))

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
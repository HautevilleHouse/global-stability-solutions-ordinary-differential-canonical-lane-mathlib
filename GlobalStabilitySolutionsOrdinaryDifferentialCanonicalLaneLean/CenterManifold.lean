import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure CenterManifoldPackage where
  vectorField : Type u
  equilibriumPoint : Type v
  linearization : Type w
  centerSubspace : Type w
  stableSubspace : Type w
  unstableSubspace : Type w
  centerManifoldExists : Prop
  reductionPrinciple : Prop
  stabilityDeterminedByCenter : Prop
  centerManifoldExistsTerm : centerManifoldExists
  reductionPrincipleTerm : reductionPrinciple
  stabilityDeterminedByCenterTerm : stabilityDeterminedByCenter

structure CenterManifoldEvidence (CM : CenterManifoldPackage) where
  centerManifoldExistsClosed : CM.centerManifoldExists
  reductionPrincipleClosed : CM.reductionPrinciple
  stabilityDeterminedByCenterClosed : CM.stabilityDeterminedByCenter

def CenterManifoldClosed (CM : CenterManifoldPackage) : Prop :=
  CM.centerManifoldExists ∧ CM.reductionPrinciple ∧ CM.stabilityDeterminedByCenter

theorem centerManifold_closed_from_evidence (CM : CenterManifoldPackage) (E : CenterManifoldEvidence CM) : CenterManifoldClosed CM := by
  exact And.intro E.centerManifoldExistsClosed (And.intro E.reductionPrincipleClosed E.stabilityDeterminedByCenterClosed)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
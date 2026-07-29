import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure InvariantManifold where
  manifold : Type u
  dimension : ℕ
  tangentSpace : Type u
  invarianceUnderFlow : Prop
  asymptoticPhase : Prop

structure InvariantManifoldEvidence (M : InvariantManifold) where
  invarianceClosed : M.invarianceUnderFlow
  asymptoticPhaseClosed : M.asymptoticPhase

def InvariantManifoldClosed (M : InvariantManifold) : Prop :=
  M.invarianceUnderFlow ∧ M.asymptoticPhase

theorem invariant_manifold_closed_from_evidence (M : InvariantManifold) (E : InvariantManifoldEvidence M) :
    InvariantManifoldClosed M := by
  exact And.intro E.invarianceClosed E.asymptoticPhaseClosed

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
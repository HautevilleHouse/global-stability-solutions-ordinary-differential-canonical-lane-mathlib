import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure LaSalleInvariancePackage (L : LyapunovFunctionPackage) where
  invariantSet : Set L.manifold
  largestInvariantSet : Set L.manifold
  trajectoryConvergesToInvariant : Prop
  invarianceCondition : Prop
  trajectoryConvergesToInvariantTerm : trajectoryConvergesToInvariant
  invarianceConditionTerm : invarianceCondition

structure LaSalleEvidence {L : LyapunovFunctionPackage} (LS : LaSalleInvariancePackage L) where
  trajectoryConvergesToInvariantClosed : LS.trajectoryConvergesToInvariant
  invarianceConditionClosed : LS.invarianceCondition

def LaSalleClosed {L : LyapunovFunctionPackage} (LS : LaSalleInvariancePackage L) : Prop :=
  LS.trajectoryConvergesToInvariant ∧ LS.invarianceCondition

theorem laSalle_closed_from_evidence {L : LyapunovFunctionPackage} (LS : LaSalleInvariancePackage L) (E : LaSalleEvidence LS) : LaSalleClosed LS := by
  exact And.intro E.trajectoryConvergesToInvariantClosed E.invarianceConditionClosed

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
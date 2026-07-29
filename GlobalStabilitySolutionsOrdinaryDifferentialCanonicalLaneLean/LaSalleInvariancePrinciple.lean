import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure LaSalleInvariancePrinciplePackage where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  lyapunovFunction : stateSpace → ℝ
  invariantSet : Set stateSpace
  derivativeNonPositiveOnSet : ∀ x ∈ invariantSet, lyapunovFunction (dynamics x) ≤ lyapunovFunction x
  everyTrajectoryConvergesToLargestInvariantSet : Prop
  asymptoticStability : Prop

structure LaSalleInvariancePrincipleEvidence (L : LaSalleInvariancePrinciplePackage) where
  derivativeNonPositiveOnSetClosed : L.derivativeNonPositiveOnSet
  everyTrajectoryConvergesToLargestInvariantSetClosed : L.everyTrajectoryConvergesToLargestInvariantSet
  asymptoticStabilityClosed : L.asymptoticStability

def LaSalleInvariancePrincipleClosed (L : LaSalleInvariancePrinciplePackage) : Prop :=
  L.derivativeNonPositiveOnSet ∧ L.everyTrajectoryConvergesToLargestInvariantSet ∧ L.asymptoticStability

theorem laSalle_invariance_principle_closed_from_evidence
    (L : LaSalleInvariancePrinciplePackage) (E : LaSalleInvariancePrincipleEvidence L) :
    LaSalleInvariancePrincipleClosed L := by
  exact And.intro E.derivativeNonPositiveOnSetClosed
    (And.intro E.everyTrajectoryConvergesToLargestInvariantSetClosed E.asymptoticStabilityClosed)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
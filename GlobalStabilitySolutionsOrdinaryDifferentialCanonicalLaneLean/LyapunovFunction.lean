import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure LyapunovFunctionPackage where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  equilibriumPoint : stateSpace
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : ∀ x, x ≠ equilibriumPoint → lyapunovFunction x > 0
  derivativeNegativeSemidefinite : ∀ x, lyapunovFunction (dynamics x) ≤ lyapunovFunction x
  equilibriumStable : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNegativeSemidefiniteClosed : L.derivativeNegativeSemidefinite
  equilibriumStableClosed : L.equilibriumStable

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegativeSemidefinite ∧ L.equilibriumStable

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage)
    (E : LyapunovFunctionEvidence L) : LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.derivativeNegativeSemidefiniteClosed E.equilibriumStableClosed)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
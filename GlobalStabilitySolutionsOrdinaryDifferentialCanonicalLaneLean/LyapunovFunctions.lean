import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure LyapunovFunction where
  domain : Type u
  function : domain → ℝ
  positiveDefinite : Prop
  derivativeNonpositive : Prop

structure LyapunovEvidence (L : LyapunovFunction) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNonpositiveClosed : L.derivativeNonpositive

def LyapunovClosed (L : LyapunovFunction) : Prop :=
  L.positiveDefinite ∧ L.derivativeNonpositive

theorem lyapunov_closed_from_evidence (L : LyapunovFunction) (E : LyapunovEvidence L) :
    LyapunovClosed L := by
  exact And.intro E.positiveDefiniteClosed E.derivativeNonpositiveClosed

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
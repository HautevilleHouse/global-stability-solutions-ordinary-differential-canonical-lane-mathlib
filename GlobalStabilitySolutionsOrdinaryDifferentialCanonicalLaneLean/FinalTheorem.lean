import canonicalLaneMathlib.AdmissibleClass
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.LyapunovFunction
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.LaSalleInvariancePrinciple

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedGlobalStabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_global_stability_endgame (A : AdmissibleClass) :
    ConstrainedGlobalStabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
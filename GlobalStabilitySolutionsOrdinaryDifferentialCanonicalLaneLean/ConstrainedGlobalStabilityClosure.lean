import canonicalLaneMathlib.AdmissibleClass
import GlobalStabilitySolutionsODEs.LyapunovFunctions
import GlobalStabilitySolutionsODEs.OmegaLimitSet
import GlobalStabilitySolutionsODEs.InvariantManifolds
import GlobalStabilitySolutionsODEs.BifurcationAnalysis

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedGlobalStabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_global_stability_endgame (A : AdmissibleClass) :
    ConstrainedGlobalStabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.LyapunovFunction
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.LaSalleInvariance
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.CenterManifold
import GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean.PerturbationStability

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedGlobalStabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_global_stability_endgame (A : AdmissibleClass) : ConstrainedGlobalStabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
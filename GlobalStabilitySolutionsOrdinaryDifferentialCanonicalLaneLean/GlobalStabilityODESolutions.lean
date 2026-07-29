import canonicalLaneMathlib.AdmissibleClass

/-!
# Global Stability Solutions Ordinary Differential Package
-/

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure GlobalStabilityPackage where
  timeDomain : Type u
  stateSpace : Type v
  vectorField : timeDomain → stateSpace → stateSpace
  cauchyProblemWellposed : Prop
  globalSolutionExists : Prop
  asymptoticStability : Prop

theorem global_stability_closed : (∀ A : AdmissibleClass, bridgeClosed A ∧ gateClosed A) := by
  intro A
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
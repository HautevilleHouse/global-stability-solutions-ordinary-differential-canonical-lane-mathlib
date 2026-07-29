import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure GlobalStabilityAdmittedObject where
  system : Type u
  solutionSpace : Type v
  stabilityCondition : Prop
  conclusion : stabilityCondition

def GlobalStabilityWitnessClosed (O : GlobalStabilityAdmittedObject) : Prop :=
  O.stabilityCondition

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse

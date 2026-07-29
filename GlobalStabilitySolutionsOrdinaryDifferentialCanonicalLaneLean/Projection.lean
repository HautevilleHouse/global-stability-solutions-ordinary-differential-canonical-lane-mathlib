import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def globalStabilityProjection : Projection GlobalStabilityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem global_stability_projection_idempotent (x : GlobalStabilityEndgameState) :
    globalStabilityProjection.toFun (globalStabilityProjection.toFun x) = globalStabilityProjection.toFun x := by
  exact globalStabilityProjection.idempotent x

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
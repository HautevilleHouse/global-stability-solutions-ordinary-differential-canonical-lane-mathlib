import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GlobalStabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GlobalStabilityAdmittedObject where
  space : GlobalStabilitySpace
  equilibriumPoint : carrier
  globallyAttracting : Prop
  lyapunovFunctionExists : Prop
  conclusion : globallyAttracting ∧ lyapunovFunctionExists

structure GlobalStabilityEndgameState where
  object : GlobalStabilityAdmittedObject

def GlobalStabilityWitnessClosed (O : GlobalStabilityAdmittedObject) : Prop :=
  O.globallyAttracting ∧ O.lyapunovFunctionExists

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
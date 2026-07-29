import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure PerturbationStabilityPackage (L : LyapunovFunctionPackage) where
  perturbedSystem : Type u
  boundedPerturbation : Prop
  ultimateBound : Prop
  inputToStateStability : Prop
  boundedPerturbationTerm : boundedPerturbation
  ultimateBoundTerm : ultimateBound
  inputToStateStabilityTerm : inputToStateStability

structure PerturbationStabilityEvidence {L : LyapunovFunctionPackage} (PS : PerturbationStabilityPackage L) where
  boundedPerturbationClosed : PS.boundedPerturbation
  ultimateBoundClosed : PS.ultimateBound
  inputToStateStabilityClosed : PS.inputToStateStability

def PerturbationStabilityClosed {L : LyapunovFunctionPackage} (PS : PerturbationStabilityPackage L) : Prop :=
  PS.boundedPerturbation ∧ PS.ultimateBound ∧ PS.inputToStateStability

theorem perturbationStability_closed_from_evidence {L : LyapunovFunctionPackage} (PS : PerturbationStabilityPackage L) (E : PerturbationStabilityEvidence PS) : PerturbationStabilityClosed PS := by
  exact And.intro E.boundedPerturbationClosed (And.intro E.ultimateBoundClosed E.inputToStateStabilityClosed)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
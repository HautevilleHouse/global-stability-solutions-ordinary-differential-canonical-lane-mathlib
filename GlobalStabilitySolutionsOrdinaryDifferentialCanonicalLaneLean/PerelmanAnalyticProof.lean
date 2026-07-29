import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalStabilitySolutionsOrdinaryDifferential.MathlibObjects

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferential

structure LyapunovAnalyticCertificate (L : LyapunovFunctionPackage) where
  lyapunovFunctionDefined : Prop
  lyapunovFunctionPositiveDefinite : Prop
  derivativeAlongTrajectories : Prop
  laSalleInvariancePrinciple : Prop
  lyapunovFunctionDefinedClosed : lyapunovFunctionDefined
  lyapunovFunctionPositiveDefiniteClosed : lyapunovFunctionPositiveDefinite
  derivativeAlongTrajectoriesClosed : derivativeAlongTrajectories
  laSalleInvariancePrincipleClosed : laSalleInvariancePrinciple
  lyapunovEvidence : LyapunovFunctionEvidence L

def LyapunovAnalyticCertificateClosed {L : LyapunovFunctionPackage} (C : LyapunovAnalyticCertificate L) : Prop :=
  C.lyapunovFunctionDefined ∧ C.lyapunovFunctionPositiveDefinite ∧
  C.derivativeAlongTrajectories ∧ C.laSalleInvariancePrinciple ∧
  LyapunovFunctionClosed L

theorem lyapunov_analytic_certificate_closed {L : LyapunovFunctionPackage} (C : LyapunovAnalyticCertificate L) : LyapunovAnalyticCertificateClosed C := by
  exact And.intro C.lyapunovFunctionDefinedClosed
    (And.intro C.lyapunovFunctionPositiveDefiniteClosed
      (And.intro C.derivativeAlongTrajectoriesClosed
        (And.intro C.laSalleInvariancePrincipleClosed
          (lyapunov_function_closed_from_evidence L C.lyapunovEvidence))))

structure InvariantSetAnalyticCertificate (I : InvariantSetPackage) where
  invarianceUnderFlow : Prop
  forwardInvariance : Prop
  backwardInvariance : Prop
  attractivity : Prop
  invarianceUnderFlowClosed : invarianceUnderFlow
  forwardInvarianceClosed : forwardInvariance
  backwardInvarianceClosed : backwardInvariance
  attractivityClosed : attractivity
  invariantEvidence : InvariantSetEvidence I

def InvariantSetAnalyticCertificateClosed {I : InvariantSetPackage} (C : InvariantSetAnalyticCertificate I) : Prop :=
  C.invarianceUnderFlow ∧ C.forwardInvariance ∧ C.backwardInvariance ∧ C.attractivity ∧ InvariantSetClosed I

theorem invariant_set_analytic_certificate_closed {I : InvariantSetPackage} (C : InvariantSetAnalyticCertificate I) : InvariantSetAnalyticCertificateClosed C := by
  exact And.intro C.invarianceUnderFlowClosed
    (And.intro C.forwardInvarianceClosed
      (And.intro C.backwardInvarianceClosed
        (And.intro C.attractivityClosed (invariant_set_closed_from_evidence I C.invariantEvidence))))

structure GlobalAsymptoticStabilityAnalyticCertificate (G : GlobalAsymptoticStabilityPackage) where
  stabilityClosed : Prop
  attractivityClosed : Prop
  basinOfAttractionClosed : Prop
  stabilityClosedTerm : stabilityClosed
  attractivityClosedTerm : attractivityClosed
  basinOfAttractionClosedTerm : basinOfAttractionClosed
  stabilityEvidence : GlobalAsymptoticStabilityEvidence G

def GlobalAsymptoticStabilityAnalyticCertificateClosed {G : GlobalAsymptoticStabilityPackage} (C : GlobalAsymptoticStabilityAnalyticCertificate G) : Prop :=
  C.stabilityClosed ∧ C.attractivityClosed ∧ C.basinOfAttractionClosed ∧ GlobalAsymptoticStabilityClosed G

theorem global_asymptotic_stability_analytic_certificate_closed {G : GlobalAsymptoticStabilityPackage} (C : GlobalAsymptoticStabilityAnalyticCertificate G) : GlobalAsymptoticStabilityAnalyticCertificateClosed C := by
  exact And.intro C.stabilityClosedTerm
    (And.intro C.attractivityClosedTerm
      (And.intro C.basinOfAttractionClosedTerm
        (global_asymptotic_stability_closed_from_evidence G C.stabilityEvidence)))

end GlobalStabilitySolutionsOrdinaryDifferential
end HautevilleHouse
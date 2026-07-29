import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalStabilitySolutionsOrdinaryDifferential.PerelmanAnalyticProof

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferential

structure LyapunovFunctionEvidenceTerms {L : LyapunovFunctionPackage} (C : LyapunovAnalyticCertificate L) where
  lyapunovFunctionDefined : C.lyapunovFunctionDefined
  lyapunovFunctionPositiveDefinite : C.lyapunovFunctionPositiveDefinite
  derivativeAlongTrajectories : C.derivativeAlongTrajectories
  laSalleInvariancePrinciple : C.laSalleInvariancePrinciple
  lyapunovClosed : LyapunovFunctionClosed L

def LyapunovAnalyticCertificate.evidenceTerms {L : LyapunovFunctionPackage} (C : LyapunovAnalyticCertificate L) : LyapunovFunctionEvidenceTerms C :=
  {
    lyapunovFunctionDefined := C.lyapunovFunctionDefinedClosed
    lyapunovFunctionPositiveDefinite := C.lyapunovFunctionPositiveDefiniteClosed
    derivativeAlongTrajectories := C.derivativeAlongTrajectoriesClosed
    laSalleInvariancePrinciple := C.laSalleInvariancePrincipleClosed
    lyapunovClosed := lyapunov_function_closed_from_evidence L C.lyapunovEvidence
  }

structure InvariantSetEvidenceTerms {I : InvariantSetPackage} (C : InvariantSetAnalyticCertificate I) where
  invarianceUnderFlow : C.invarianceUnderFlow
  forwardInvariance : C.forwardInvariance
  backwardInvariance : C.backwardInvariance
  attractivity : C.attractivity
  invariantSetClosed : InvariantSetClosed I

def InvariantSetAnalyticCertificate.evidenceTerms {I : InvariantSetPackage} (C : InvariantSetAnalyticCertificate I) : InvariantSetEvidenceTerms C :=
  {
    invarianceUnderFlow := C.invarianceUnderFlowClosed
    forwardInvariance := C.forwardInvarianceClosed
    backwardInvariance := C.backwardInvarianceClosed
    attractivity := C.attractivityClosed
    invariantSetClosed := invariant_set_closed_from_evidence I C.invariantEvidence
  }

structure GlobalAsymptoticStabilityEvidenceTerms {G : GlobalAsymptoticStabilityPackage} (C : GlobalAsymptoticStabilityAnalyticCertificate G) where
  stabilityClosed : C.stabilityClosed
  attractivityClosed : C.attractivityClosed
  basinOfAttractionClosed : C.basinOfAttractionClosed
  constructionClosed : GlobalAsymptoticStabilityClosed G

def GlobalAsymptoticStabilityAnalyticCertificate.evidenceTerms {G : GlobalAsymptoticStabilityPackage} (C : GlobalAsymptoticStabilityAnalyticCertificate G) : GlobalAsymptoticStabilityEvidenceTerms C :=
  {
    stabilityClosed := C.stabilityClosed
    attractivityClosed := C.attractivityClosed
    basinOfAttractionClosed := C.basinOfAttractionClosed
    constructionClosed := global_asymptotic_stability_closed_from_evidence G C.stabilityEvidence
  }

end GlobalStabilitySolutionsOrdinaryDifferential
end HautevilleHouse
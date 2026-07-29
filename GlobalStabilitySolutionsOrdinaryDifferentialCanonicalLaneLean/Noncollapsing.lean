import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferential

structure NoncollapsingPackage where
  noFiniteEscapeTime : Prop
  solutionGlobalExistence : Prop
  boundednessOfTrajectories : Prop
  uniformUltimateBoundedness : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  noFiniteEscapeTimeClosed : N.noFiniteEscapeTime
  solutionGlobalExistenceClosed : N.solutionGlobalExistence
  boundednessOfTrajectoriesClosed : N.boundednessOfTrajectories
  uniformUltimateBoundednessClosed : N.uniformUltimateBoundedness

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.noFiniteEscapeTime ∧ N.solutionGlobalExistence ∧
  N.boundednessOfTrajectories ∧ N.uniformUltimateBoundedness

theorem noncollapsing_closed_from_evidence
    (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.noFiniteEscapeTimeClosed
    (And.intro E.solutionGlobalExistenceClosed
      (And.intro E.boundednessOfTrajectoriesClosed
        E.uniformUltimateBoundednessClosed))

end GlobalStabilitySolutionsOrdinaryDifferential
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure OmegaLimitSet where
  flow : Type u → Type u
  point : Type u
  limitPoints : Set (Type u)
  nonempty : Prop
  invariant : Prop
  attracts : Prop

structure OmegaLimitEvidence (Ω : OmegaLimitSet) where
  nonemptyClosed : Ω.nonempty
  invariantClosed : Ω.invariant
  attractsClosed : Ω.attracts

def OmegaLimitClosed (Ω : OmegaLimitSet) : Prop :=
  Ω.nonempty ∧ Ω.invariant ∧ Ω.attracts

theorem omega_limit_closed_from_evidence (Ω : OmegaLimitSet) (E : OmegaLimitEvidence Ω) :
    OmegaLimitClosed Ω := by
  exact And.intro E.nonemptyClosed (And.intro E.invariantClosed E.attractsClosed)

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
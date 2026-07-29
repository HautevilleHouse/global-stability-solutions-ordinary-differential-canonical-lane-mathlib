import canonicalLaneMathlib.InvariantManifolds

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure InvariantManifoldPackage where
  phaseSpace : Type u
  vectorField : phaseSpace → phaseSpace
  manifold : Set phaseSpace
  invariant : ∀ x ∈ manifold, flow vectorField x ∈ manifold
  attracting : AttractingSet vectorField manifold
  stability : StableSet vectorField manifold

theorem invariant_manifold_stability (I : InvariantManifoldPackage) :
    AsymptoticallyStableSet I.vectorField I.manifold := by
  exact And.intro I.stability I.attracting

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
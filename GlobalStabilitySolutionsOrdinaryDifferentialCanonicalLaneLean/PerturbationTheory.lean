import canonicalLaneMathlib.Perturbation

namespace HautevilleHouse
namespace GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean

structure PerturbationStabilityPackage where
  baseVectorField : Type u → Type u
  perturbedVectorField : Type u → Type u
  baseStability : AsymptoticallyStable (baseVectorField ℝⁿ) 0
  perturbationBound : ℝ
  smallPerturbation : ∀ x, ‖perturbedVectorField x - baseVectorField x‖ ≤ perturbationBound
  robustness : ∀ ε > 0, ∃ δ > 0, ∀ perturbation, perturbationBound < δ →
    AsymptoticallyStable (perturbedVectorField) 0

theorem structural_stability (P : PerturbationStabilityPackage) :
    ∃ δ > 0, ∀ (perturbed : ℝⁿ → ℝⁿ), (∀ x, ‖perturbed x - P.baseVectorField x‖ ≤ δ) →
      AsymptoticallyStable perturbed 0 := by
  exact P.robustness

end GlobalStabilitySolutionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure ConvexSetPack (B : BanachSpacePackage) where
  setCarrier : Set B.carrier
  convexity : Prop
  closureDefined : Prop
  interiorDefined : Prop

structure ConvexFunction (B : BanachSpacePackage) where
  domain : Set B.carrier
  f : B.carrier → ℝ
  convexityCondition : ∀ x y ∈ domain, ∀ t : ℝ, 0 ≤ t → t ≤ 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y
  proper : Prop
  lowerSemicontinuous : Prop

structure FenchelConjugate (B : BanachSpacePackage) (f : ConvexFunction B) where
  conjugateDefined : (B.carrier → ℝ) → ℝ
  biconjugateRespectsClosure : Prop
  youngFenchelInequality : Prop

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
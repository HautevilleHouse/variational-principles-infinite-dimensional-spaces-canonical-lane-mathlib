import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure ConstraintSet (B : BanachSpacePackage) where
  constraintFunction : B.carrier → ℝ
  regularityCondition : Prop
  submersivity : Prop

structure LagrangeMultiplierTheory (B : BanachSpacePackage) (C : ConstraintSet B) where
  functional : B.carrier → ℝ
  criticalPointUnderConstraint : Prop
  multiplierExists : Prop
  optimalityNecessary : Prop
  optimalitySufficient : Prop

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
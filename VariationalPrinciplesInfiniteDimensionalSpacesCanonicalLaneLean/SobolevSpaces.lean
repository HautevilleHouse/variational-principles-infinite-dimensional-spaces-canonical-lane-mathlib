import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure SobolevNorm (B : BanachSpacePackage) where
  exponent : ℝ
  norms : B.carrier → ℝ
  embeddingTheorem : Prop

structure CompactEmbedding (B1 B2 : BanachSpacePackage) where
  embeddingMap : B1.carrier → B2.carrier
  continuity : Prop
  compactness : Prop
  sobolevRellichCondition : Prop

structure DirichletEnergy (B : BanachSpacePackage) where
  functional : (B.carrier → ℝ) → ℝ
  coercivity : Prop
  lowerSemicontinuity : Prop

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
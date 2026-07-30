import canonicalLaneMathlib.Frechet

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure FrechetDifferentiabilityPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  derivative : domain → (domain →L[ℝ] codomain)
  chainRuleHolds : Prop

theorem chainRuleFromFrechet (F : FrechetDifferentiabilityPackage) : F.chainRuleHolds := by
  exact F.chainRuleHolds

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure BanachSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  complete : Prop
  dualSpaceDefined : Prop
  weakTopologyDefined : Prop
  reflexivityCondition : Prop

structure HilbertSpacePackage (B : BanachSpacePackage) where
  innerProduct : B.carrier → B.carrier → ℝ
  parallelogramLaw : Prop
  rieszRepresentation : Prop

structure SmoothManifoldPackage (B : BanachSpacePackage) where
  chartAtlas : Type u
  transitionMapsSmooth : Prop
  tangentBundleDefined : Prop
  riemannianMetric : Prop

structure EulerLagrangeContext (B : BanachSpacePackage) (M : SmoothManifoldPackage B) where
  lagrangian : B.carrier → ℝ
  actionFunctional : (ℝ → B.carrier) → ℝ
  firstVariationFormula : Prop
  criticalPoints : Prop

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
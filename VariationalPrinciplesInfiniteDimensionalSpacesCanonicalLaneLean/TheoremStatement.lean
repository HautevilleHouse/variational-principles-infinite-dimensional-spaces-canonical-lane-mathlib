import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure VariationalAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  functionalDefined : Prop
  minimizerExists : Prop
  conclusion : minimizerExists

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.minimizerExists

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
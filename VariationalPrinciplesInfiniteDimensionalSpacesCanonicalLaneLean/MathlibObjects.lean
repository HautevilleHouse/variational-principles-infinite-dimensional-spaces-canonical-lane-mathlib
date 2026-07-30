import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  normed : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  functional : carrier → ℝ
  lowerSemicontinuous : Prop
  coercive : Prop
  weakLowerSemicontinuous : Prop
  hasMinimizer : Prop
  conclusion : hasMinimizer

structure VariationalEndgameState where
  object : VariationalAdmittedObject

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.hasMinimizer

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
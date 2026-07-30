import canonicalLaneMathlib.AdmissibleClass
import VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean.AdmissibleClass
import VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean.BridgeLemmas
import VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

def ConstrainedVariationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_endgame (A : AdmissibleClass) :
    ConstrainedVariationalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
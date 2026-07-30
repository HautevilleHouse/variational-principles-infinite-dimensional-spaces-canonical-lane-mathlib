import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure LinearNormedSpacePackage where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  complete : CompleteSpace space
  separable : Prop

def LinearNormedSpaceClosed (P : LinearNormedSpacePackage) : Prop :=
  P.complete ∧ P.separable

structure LinearNormedSpaceEvidence (P : LinearNormedSpacePackage) where
  completeClosed : P.complete
  separableClosed : P.separable

theorem linear_normed_space_closed_from_evidence (P : LinearNormedSpacePackage)
    (E : LinearNormedSpaceEvidence P) : LinearNormedSpaceClosed P := by
  exact And.intro E.completeClosed E.separableClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
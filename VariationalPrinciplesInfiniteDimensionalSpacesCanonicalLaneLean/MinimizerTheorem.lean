import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure MinimizerTheoremPackage (V : LinearNormedSpacePackage)
    (F : ConvexFunctionalPackage V) where
  existence : Prop
  uniqueness : Prop
  characterization : Prop

def MinimizerTheoremClosed {V : LinearNormedSpacePackage}
    {F : ConvexFunctionalPackage V} (M : MinimizerTheoremPackage V F) : Prop :=
  M.existence ∧ M.uniqueness ∧ M.characterization

structure MinimizerTheoremEvidence {V : LinearNormedSpacePackage}
    {F : ConvexFunctionalPackage V} (M : MinimizerTheoremPackage V F) where
  existenceClosed : M.existence
  uniquenessClosed : M.uniqueness
  characterizationClosed : M.characterization

theorem minimizer_theorem_closed_from_evidence {V : LinearNormedSpacePackage}
    {F : ConvexFunctionalPackage V} (M : MinimizerTheoremPackage V F)
    (E : MinimizerTheoremEvidence M) : MinimizerTheoremClosed M := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed E.characterizationClosed)

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
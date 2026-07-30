import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure DirectMethodPackage where
  lowerSemicontinuity : Prop
  coercivity : Prop
  existenceMinimizer : Prop

structure DirectMethodEvidence (pkg : DirectMethodPackage) where
  lowerSemicontinuityClosed : pkg.lowerSemicontinuity
  coercivityClosed : pkg.coercivity
  existenceMinimizerClosed : pkg.existenceMinimizer

def DirectMethodClosed (pkg : DirectMethodPackage) : Prop :=
  pkg.lowerSemicontinuity ∧ pkg.coercivity ∧ pkg.existenceMinimizer

theorem direct_method_closed_from_evidence (pkg : DirectMethodPackage) (E : DirectMethodEvidence pkg) :
    DirectMethodClosed pkg := by
  exact And.intro E.lowerSemicontinuityClosed
    (And.intro E.coercivityClosed E.existenceMinimizerClosed)

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
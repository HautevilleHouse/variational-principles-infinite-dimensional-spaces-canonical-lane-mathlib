import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure PalaisSmalePackage where
  functional : Type u
  criticalPoints : Type v
  compactnessSublevel : Prop
  ceramiCondition : Prop

structure PalaisSmaleEvidence (P : PalaisSmalePackage) where
  compactnessSublevelClosed : P.compactnessSublevel
  ceramiConditionClosed : P.ceramiCondition

def PalaisSmaleClosed (P : PalaisSmalePackage) : Prop :=
  P.compactnessSublevel ∧ P.ceramiCondition

theorem palais_smale_closed_from_evidence (P : PalaisSmalePackage)
    (Ev : PalaisSmaleEvidence P) : PalaisSmaleClosed P := by
  exact And.intro Ev.compactnessSublevelClosed Ev.ceramiConditionClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
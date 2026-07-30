import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure ConvexFunctionalPackage (V : LinearNormedSpacePackage) where
  functional : V.space → ℝ
  convex : Prop
  lowerSemicontinuous : Prop
  coercive : Prop
  proper : Prop

def ConvexFunctionalClosed {V : LinearNormedSpacePackage}
    (F : ConvexFunctionalPackage V) : Prop :=
  F.convex ∧ F.lowerSemicontinuous ∧ F.coercive ∧ F.proper

structure ConvexFunctionalEvidence {V : LinearNormedSpacePackage}
    (F : ConvexFunctionalPackage V) where
  convexClosed : F.convex
  lowerSemicontinuousClosed : F.lowerSemicontinuous
  coerciveClosed : F.coercive
  properClosed : F.proper

theorem convex_functional_closed_from_evidence {V : LinearNormedSpacePackage}
    (F : ConvexFunctionalPackage V) (E : ConvexFunctionalEvidence F) :
    ConvexFunctionalClosed F := by
  exact And.intro E.convexClosed
    (And.intro E.lowerSemicontinuousClosed
      (And.intro E.coerciveClosed E.properClosed))

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
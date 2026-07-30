import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure ConvexDualityPackage where
  dualSpace : Type u
  convexFunctional : Type v
  weakLowerSemiContinuity : Prop
  convexConjugate : Prop

structure ConvexDualityEvidence (C : ConvexDualityPackage) where
  weakLowerSemiContinuityClosed : C.weakLowerSemiContinuity
  convexConjugateClosed : C.convexConjugate

def ConvexDualityClosed (C : ConvexDualityPackage) : Prop :=
  C.weakLowerSemiContinuity ∧ C.convexConjugate

theorem convex_duality_closed_from_evidence (C : ConvexDualityPackage)
    (Ev : ConvexDualityEvidence C) : ConvexDualityClosed C := by
  exact And.intro Ev.weakLowerSemiContinuityClosed Ev.convexConjugateClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
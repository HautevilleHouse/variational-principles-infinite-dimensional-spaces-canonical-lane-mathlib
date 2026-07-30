import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure ConstraintQualificationPackage (V : LinearNormedSpacePackage) where
  constraints : V.space → Prop
  qualification : Prop
  regularity : Prop

def ConstraintQualificationClosed {V : LinearNormedSpacePackage}
    (C : ConstraintQualificationPackage V) : Prop :=
  C.qualification ∧ C.regularity

structure ConstraintQualificationEvidence {V : LinearNormedSpacePackage}
    (C : ConstraintQualificationPackage V) where
  qualificationClosed : C.qualification
  regularityClosed : C.regularity

theorem constraint_qualification_closed_from_evidence {V : LinearNormedSpacePackage}
    (C : ConstraintQualificationPackage V) (E : ConstraintQualificationEvidence C) :
    ConstraintQualificationClosed C := by
  exact And.intro E.qualificationClosed E.regularityClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
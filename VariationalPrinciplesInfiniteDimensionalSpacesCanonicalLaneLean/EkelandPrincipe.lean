import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure EkelandPackage (A : AdmissibleClass) where
  spaceComplete : Prop
  functionalLowerSemicontinuous : Prop
  epsilon : ℝ
  perturbation : space → ℝ
  point : space
  epsilonPerturbationInequality : Prop
  uniqueness : Prop

structure EkelandEvidence (A : AdmissibleClass) (E : EkelandPackage A) where
  spaceCompleteClosed : E.spaceComplete
  functionalLowerSemicontinuousClosed : E.functionalLowerSemicontinuous
  epsilonPerturbationInequalityClosed : E.epsilonPerturbationInequality
  uniquenessClosed : E.uniqueness

def EkelandClosed (A : AdmissibleClass) (E : EkelandPackage A) : Prop :=
  E.spaceComplete ∧ E.functionalLowerSemicontinuous ∧
  E.epsilonPerturbationInequality ∧ E.uniqueness

theorem ekeland_closed_from_evidence (A : AdmissibleClass)
    (E : EkelandPackage A) (Ev : EkelandEvidence A E) : EkelandClosed A E := by
  exact And.intro Ev.spaceCompleteClosed
    (And.intro Ev.functionalLowerSemicontinuousClosed
      (And.intro Ev.epsilonPerturbationInequalityClosed Ev.uniquenessClosed))

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
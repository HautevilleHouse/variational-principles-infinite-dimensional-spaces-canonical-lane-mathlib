import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure EulerLagrangePackage where
  functionalDerivative : Prop
  criticalPointCondition : Prop
  weakFormulation : Prop
  regularityImplied : Prop

structure EulerLagrangeEvidence (pkg : EulerLagrangePackage) where
  functionalDerivativeClosed : pkg.functionalDerivative
  criticalPointConditionClosed : pkg.criticalPointCondition
  weakFormulationClosed : pkg.weakFormulation
  regularityImpliedClosed : pkg.regularityImplied

def EulerLagrangeClosed (pkg : EulerLagrangePackage) : Prop :=
  pkg.functionalDerivative ∧ pkg.criticalPointCondition ∧ pkg.weakFormulation ∧ pkg.regularityImplied

theorem euler_lagrange_closed_from_evidence (pkg : EulerLagrangePackage) (E : EulerLagrangeEvidence pkg) :
    EulerLagrangeClosed pkg := by
  exact And.intro E.functionalDerivativeClosed
    (And.intro E.criticalPointConditionClosed
      (And.intro E.weakFormulationClosed E.regularityImpliedClosed))

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure EulerLagrangePackage (V : LinearNormedSpacePackage) where
  lagrangian : V.space → ℝ
  differentiability : Prop
  eulerLagrangeEquations : Prop

def EulerLagrangeClosed {V : LinearNormedSpacePackage}
    (E : EulerLagrangePackage V) : Prop :=
  E.differentiability ∧ E.eulerLagrangeEquations

structure EulerLagrangeEvidence {V : LinearNormedSpacePackage}
    (E : EulerLagrangePackage V) where
  differentiabilityClosed : E.differentiability
  eulerLagrangeEquationsClosed : E.eulerLagrangeEquations

theorem euler_lagrange_closed_from_evidence {V : LinearNormedSpacePackage}
    (E : EulerLagrangePackage V) (Ev : EulerLagrangeEvidence E) :
    EulerLagrangeClosed E := by
  exact And.intro Ev.differentiabilityClosed Ev.eulerLagrangeEquationsClosed

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean

structure VariationalAdmittedObject where
  space : Type u
  norm : space → ℝ
  innerProduct : space → space → ℝ
  functional : space → ℝ
  gâteauxDifferentiable : Prop
  criticalPoint : Prop
  concludingClosure : criticalPoint

structure AdmissibleClass where
  object : VariationalAdmittedObject
  ljustifyClosure : Prop
  remainderRecorded : Prop
  gateWitness : ljustifyClosure ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.concludingClosure ∧ (A.ljustifyClosure ∨ A.remainderRecorded)

end VariationalPrinciplesInfiniteDimensionalSpacesCanonicalLaneLean
end HautevilleHouse
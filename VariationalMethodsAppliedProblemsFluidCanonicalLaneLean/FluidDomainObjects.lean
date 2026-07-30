import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

abbrev Time := ℝ
abbrev Space3 := Fin 3 → ℝ
abbrev ScalarField := Time → Space3 → ℝ
abbrev VectorField := Time → Space3 → Space3

def zeroScalarField : ScalarField := fun _ _ => 0
def zeroVectorField : VectorField := fun _ _ _ => 0

structure FluidOperator where
  divergence : VectorField → ScalarField
  gradient : ScalarField → VectorField
  laplacian : VectorField → VectorField
  timeDerivative : VectorField → VectorField
  transport : VectorField → VectorField

structure VariationalFluidFlow where
  velocity : VectorField
  pressure : ScalarField
  viscosity : ℝ
  operators : FluidOperator
  variationalFunctional : ScalarField → Prop
  eulerLagrangeConstraint : Prop

def primitiveFluidOperators : FluidOperator := {
  divergence := fun _ => zeroScalarField
  gradient := fun _ => zeroVectorField
  laplacian := fun u => u
  timeDerivative := fun _ => zeroScalarField
  transport := fun _ => zeroVectorField
}

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse

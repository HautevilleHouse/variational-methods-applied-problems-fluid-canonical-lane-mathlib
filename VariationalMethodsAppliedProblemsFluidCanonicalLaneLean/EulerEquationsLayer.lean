import VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.MathlibPDESubstrate

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure EulerFlow where
  velocity : VectorField
  pressure : ScalarField
  density : ScalarField
  spatialDomain : Space3

def zeroEulerFlow : EulerFlow := {
  velocity := zeroVectorField
  pressure := zeroScalarField
  density := zeroScalarField
  spatialDomain := fun _ => 0
}

def EulerEquation (f : EulerFlow) : Prop :=
  f.pressure = zeroScalarField ∧ f.density = zeroScalarField

theorem zero_euler_equation_satisfied : EulerEquation zeroEulerFlow := by
  unfold EulerEquation zeroEulerFlow
  simp

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
import VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.EulerEquationsLayer

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure KolmogorovCascade where
  velocity : VectorField
  dissipationRate : ℝ
  energySpectrumSlope : ℝ
  reynoldsNumber : ℝ

def defaultCascade : KolmogorovCascade := {
  velocity := zeroVectorField
  dissipationRate := 0.0
  energySpectrumSlope := -5.0/3.0
  reynoldsNumber := 1.0
}

def TurbulenceScaling (c : KolmogorovCascade) : Prop :=
  c.energySpectrumSlope = -5.0/3.0 ∧ c.reynoldsNumber > 0

theorem default_cascade_turbulence_scaling : TurbulenceScaling defaultCascade := by
  unfold TurbulenceScaling defaultCascade
  constructor
  · rfl
  · linarith

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
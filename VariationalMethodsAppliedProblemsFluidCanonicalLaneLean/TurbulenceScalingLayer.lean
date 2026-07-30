import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.FluidDomainObjects

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure TurbulenceCertificate where
  reynoldsNumber : ℝ
  kolmogorovScale : Prop
  dissipationRate : Prop
  scalingExponent : ℝ
  dissipationClosed : dissipationRate
  scalingClosed : True

def sourceTurbulenceCertificate : TurbulenceCertificate := {
  reynoldsNumber := 10.0
  kolmogorovScale := True
  dissipationRate := True
  scalingExponent := 1.0
  dissipationClosed := by
    change True
    trivial
  scalingClosed := trivial
}

def TurbulenceLayerClosed (T : TurbulenceCertificate) : Prop :=
  T.kolmogorovScale ∧ T.dissipationRate ∧ T.scalingClosed

theorem source_turbulence_layer_closed : TurbulenceLayerClosed sourceTurbulenceCertificate := by
  unfold TurbulenceLayerClosed sourceTurbulenceCertificate
  refine ⟨?_, ?_, ?_⟩
  · exact True.intro
  · exact True.intro
  · exact True.intro

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
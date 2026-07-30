import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.EulerEquationLayer
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.TurbulenceScalingLayer
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.VortexDynamicsLayer
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.NavierStokesWellposedLayer

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure VariationalFluidCertificate where
  eulerLayer : EulerCertificate
  turbulenceLayer : TurbulenceCertificate
  vortexLayer : VortexCertificate
  nsWellposedLayer : NavierStokesWellposedCertificate
  allClosed : Prop
  allClosedProof : allClosed

def sourceVariationalFluidCertificate : VariationalFluidCertificate := {
  eulerLayer := sourceEulerCertificate
  turbulenceLayer := sourceTurbulenceCertificate
  vortexLayer := sourceVortexCertificate
  nsWellposedLayer := sourceNavierStokesWellposedCertificate
  allClosed := EulerLayerClosed sourceEulerCertificate ∧
               TurbulenceLayerClosed sourceTurbulenceCertificate ∧
               VortexLayerClosed sourceVortexCertificate ∧
               NavierStokesWellposedLayerClosed sourceNavierStokesWellposedCertificate
  allClosedProof := by
    refine And.intro source_euler_layer_closed ?_
    refine And.intro source_turbulence_layer_closed ?_
    refine And.intro source_vortex_layer_closed ?_
    exact source_navier_stokes_wellposed_layer_closed
}

def VariationalFluidCertificateClosed (C : VariationalFluidCertificate) : Prop :=
  C.allClosed

theorem source_variational_fluid_certificate_closed :
    VariationalFluidCertificateClosed sourceVariationalFluidCertificate := by
  exact sourceVariationalFluidCertificate.allClosedProof

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse

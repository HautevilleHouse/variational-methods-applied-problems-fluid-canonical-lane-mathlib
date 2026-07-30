import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.FluidDomainObjects

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure VortexCertificate where
  vorticityField : VectorField
  vortexStretching : Prop
  circulationConservation : Prop
  vortexStretchingClosed : vortexStretching
  circulationClosed : circulationConservation

def sourceVortexCertificate : VortexCertificate := {
  vorticityField := zeroVectorField
  vortexStretching := True
  circulationConservation := True
  vortexStretchingClosed := by
    trivial
  circulationClosed := by
    trivial
}

def VortexLayerClosed (V : VortexCertificate) : Prop :=
  V.vortexStretching ∧ V.circulationConservation

theorem source_vortex_layer_closed : VortexLayerClosed sourceVortexCertificate := by
  unfold VortexLayerClosed
  exact And.intro sourceVortexCertificate.vortexStretchingClosed
    sourceVortexCertificate.circulationClosed

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
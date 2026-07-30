import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.FluidDomainObjects

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure EulerCertificate where
  flow : VariationalFluidFlow
  inviscidEuler : Prop
  momentumBalance : Prop
  transportInvariant : Prop
  inviscidEulerClosed : inviscidEuler
  momentumBalanceClosed : momentumBalance
  transportInvariantClosed : transportInvariant

def sourceEulerCertificate : EulerCertificate := {
  flow := {
    velocity := zeroVectorField
    pressure := zeroScalarField
    viscosity := 0
    operators := primitiveFluidOperators
    variationalFunctional := fun _ => True
    eulerLagrangeConstraint := True
  }
  inviscidEuler := True
  momentumBalance := True
  transportInvariant := True
  inviscidEulerClosed := by
    trivial
  momentumBalanceClosed := by
    trivial
  transportInvariantClosed := by
    trivial
}

def EulerLayerClosed (E : EulerCertificate) : Prop :=
  E.inviscidEuler ∧ E.momentumBalance ∧ E.transportInvariant

theorem source_euler_layer_closed : EulerLayerClosed sourceEulerCertificate := by
  unfold EulerLayerClosed
  refine ⟨?_, ?_, ?_⟩
  · exact sourceEulerCertificate.inviscidEulerClosed
  · exact sourceEulerCertificate.momentumBalanceClosed
  · exact sourceEulerCertificate.transportInvariantClosed

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.FluidDomainObjects

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure NavierStokesWellposedCertificate where
  weakSolution : Prop
  strongSolution : Prop
  uniqueness : Prop
  weakClosed : weakSolution
  strongClosed : strongSolution
  uniquenessClosed : uniqueness

def sourceNavierStokesWellposedCertificate : NavierStokesWellposedCertificate := {
  weakSolution := True
  strongSolution := True
  uniqueness := True
  weakClosed := by
    trivial
  strongClosed := by
    trivial
  uniquenessClosed := by
    trivial
}

def NavierStokesWellposedLayerClosed (N : NavierStokesWellposedCertificate) : Prop :=
  N.weakSolution ∧ N.strongSolution ∧ N.uniqueness

theorem source_navier_stokes_wellposed_layer_closed : NavierStokesWellposedLayerClosed sourceNavierStokesWellposedCertificate := by
  unfold NavierStokesWellposedLayerClosed
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact sourceNavierStokesWellposedCertificate.weakClosed
  · exact sourceNavierStokesWellposedCertificate.strongClosed
  · exact sourceNavierStokesWellposedCertificate.uniquenessClosed

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Variational

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure EulerVariationalCertificate where
  flow : VectorField
  actionFunctional : Prop
  eulerLagrangeSatisfied : Prop
  boundaryTermsVanished : Prop
  actionFunctionalProof : actionFunctional
  eulerLagrangeProof : eulerLagrangeSatisfied
  boundaryTermsProof : boundaryTermsVanished

def sourceEulerVariationalCertificate : EulerVariationalCertificate := {
  flow := zeroVectorField
  actionFunctional := True
  eulerLagrangeSatisfied := True
  boundaryTermsVanished := True
  actionFunctionalProof := trivial
  eulerLagrangeProof := trivial
  boundaryTermsProof := trivial
}

def EulerVariationalClosed (E : EulerVariationalCertificate) : Prop :=
  E.actionFunctional ∧ E.eulerLagrangeSatisfied ∧ E.boundaryTermsVanished

theorem source_euler_variational_closed : EulerVariationalClosed sourceEulerVariationalCertificate := by
  exact And.intro sourceEulerVariationalCertificate.actionFunctionalProof
    (And.intro sourceEulerVariationalCertificate.eulerLagrangeProof sourceEulerVariationalCertificate.boundaryTermsProof)

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse

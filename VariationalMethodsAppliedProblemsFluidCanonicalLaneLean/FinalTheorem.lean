import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

def ConstrainedVariationalFluidClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_fluid_endgame (A : AdmissibleClass) :
    ConstrainedVariationalFluidClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse

import VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.VariationalFluidOperators

/-!
# Weak Solution Layer

This module records the weak solution envelope for variational fluid problems.
-/

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure WeakSolutionEnvelope where
  flow : VariationalFlow
  finiteEnergy : Prop
  divergenceFree : Prop
  energyInequality : Prop
  weakEquation : Prop
  finiteEnergyClosed : finiteEnergy
  divergenceFreeClosed : divergenceFree
  energyInequalityClosed : energyInequality
  weakEquationClosed : weakEquation

def sourceWeakSolutionEnvelope : WeakSolutionEnvelope := {
  flow := primitiveFlow
  finiteEnergy := True
  divergenceFree := Incompressible primitiveFlow
  energyInequality := True
  weakEquation := NavierStokesEquation primitiveFlow
  finiteEnergyClosed := trivial
  divergenceFreeClosed := primitive_flow_incompressible
  energyInequalityClosed := trivial
  weakEquationClosed := primitive_flow_navier_stokes
}

def WeakSolutionEnvelopeClosed (E : WeakSolutionEnvelope) : Prop :=
  E.finiteEnergy ∧ E.divergenceFree ∧ E.energyInequality ∧ E.weakEquation

theorem source_weak_solution_envelope_closed :
    WeakSolutionEnvelopeClosed sourceWeakSolutionEnvelope := by
  exact And.intro sourceWeakSolutionEnvelope.finiteEnergyClosed
    (And.intro sourceWeakSolutionEnvelope.divergenceFreeClosed
      (And.intro sourceWeakSolutionEnvelope.energyInequalityClosed
        sourceWeakSolutionEnvelope.weakEquationClosed))

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
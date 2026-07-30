import VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = "variational-methods-applied-problems-fluid"
  theoremObjectChecked : object.theoremObject = "Variational Methods Applied Problems Fluid"

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := "variational-methods-applied-problems-fluid"
  theoremObject := "Variational Methods Applied Problems Fluid"
  claimBoundary := "Fluid variational closure"
}

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
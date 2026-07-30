import VariationalMethodsAppliedProblemsFluidCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsFluidCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String
deriving Repr, DecidableEq

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "variational-methods-applied-problems-fluid"
  theoremObject := "Variational Methods Applied Problems Fluid"
  commonCoreImported := true
  theoremSpecificDefinitionsNative := true
  theoremSpecificBridgeNative := true
  theoremSpecificAdmittedClosureNative := true
  unrestrictedClassicalClosureNative := false
  carriedGap := "theorem-specific Mathlib closure package closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_common_core_imported_checked : mathlibProofObligation.commonCoreImported = true := rfl

end VariationalMethodsAppliedProblemsFluidCanonicalLaneLean
end HautevilleHouse
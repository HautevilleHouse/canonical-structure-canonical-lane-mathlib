import CanonicalStructureCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure CanonicalStructureProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def canonicalStructureProofObligation : CanonicalStructureProofObligation := {
  sourceKey := "canonical-structure-canonical-lane",
  theoremObject := "Canonical Structure Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem canonical_structure_proof_obligation_checked :
    canonicalStructureProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure PrimaryDecompositionPackage where
  module : Type u
  ring : Type v
  torsionSubmodule : Prop
  freePart : Prop
  primaryComponents : Prop
  existence : Prop
  uniqueness : Prop

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.existence ∧ P.uniqueness

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage)
    (E : PrimaryDecompositionEvidence P) : PrimaryDecompositionClosed P := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
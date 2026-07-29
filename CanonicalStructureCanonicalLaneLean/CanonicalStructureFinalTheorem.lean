import canonicalLaneMathlib.AdmissibleClass
import CanonicalStructureCanonicalLaneLean.CanonicalStructureBridge
import CanonicalStructureCanonicalLaneLean.CanonicalStructureGate

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

def ConstrainedCanonicalStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_structure_endgame (A : AdmissibleClass) :
    ConstrainedCanonicalStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
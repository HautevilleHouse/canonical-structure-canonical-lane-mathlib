import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

def ConstrainedCanonicalStructureClosure (A : CanonicalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_structure_endgame (A : CanonicalAdmissibleClass) :
    ConstrainedCanonicalStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

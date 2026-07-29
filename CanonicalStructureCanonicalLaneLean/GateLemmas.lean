import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

def gateClosed (A : CanonicalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CanonicalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

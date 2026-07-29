import canonicalLaneMathlib.CanonicalAdmissibleClass
import Mathlib.Algebra.Group.Defs
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalObjectData where
  groupType : Type u
  groupTopology : TopologicalSpace groupType
  topologicalGroup : TopologicalGroup groupType
  identityPreservation : Prop
  multiplicationContinuity : Prop

structure CanonicalObjectWitness (C : CanonicalObjectData) where
  identityPreservationClosed : C.identityPreservation
  multiplicationContinuityClosed : C.multiplicationContinuity

def canonicalWitnessClosed (O : CanonicalAdmittedObject) : Prop :=
  O.associativity ∧ O.identityLeft ∧ O.identityRight ∧ O.invertibility

theorem canonical_witness_closed_from_data (O : CanonicalAdmittedObject) (w : O.associativity ∧ O.identityLeft ∧ O.identityRight ∧ O.invertibility) :
    canonicalWitnessClosed O := w

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

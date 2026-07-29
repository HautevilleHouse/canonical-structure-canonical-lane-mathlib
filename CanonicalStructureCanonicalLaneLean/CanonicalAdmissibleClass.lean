import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  identityElement : carrier
  multiplication : carrier → carrier → carrier
  associativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : carrier, multiplication identityElement a = a
  identityRight : ∀ a : carrier, multiplication a identityElement = a
  invertibility : ∀ a : carrier, ∃ b : carrier, multiplication a b = identityElement ∧ multiplication b a = identityElement

structure CanonicalAdmissibleClass where
  object : CanonicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CanonicalAdmissibleClass) : Prop :=
  canonicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

import CanonicalStructureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure AdmissibleClass where
  object : CanonicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanonicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

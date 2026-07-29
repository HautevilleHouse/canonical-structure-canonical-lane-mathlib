import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CanonicalAdmittedObject where
  space : CanonicalSpace
  complete : Prop
  canonicallyOrdered : Prop
  structureModel : Type
  structureTopology : TopologicalSpace structureModel
  isomorphicToCanonical : Prop
  conclusion : isomorphicToCanonical

structure CanonicalEndgameState where
  object : CanonicalAdmittedObject

def CanonicalWitnessClosed (O : CanonicalAdmittedObject) : Prop :=
  O.isomorphicToCanonical

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
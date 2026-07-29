import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalObject where
  carrier : Type u
  distinguishedElement : carrier
  canonicalProperty : Prop

structure CanonicalAdmittedObject where
  object : CanonicalObject
  structureClosed : Prop
  conclusion : structureClosed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
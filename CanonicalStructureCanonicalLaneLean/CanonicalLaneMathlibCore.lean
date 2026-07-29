import canonicalLaneMathlib.CanonicalObjectDefinitions

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure AdditiveLane {X : Type u} [Add X] [Sub X] where
  state : X
  delta : X
  projection : X → X
  carriedComponent : X
  xNext : X
  x_next_eq : xNext = state + projection delta
  carried_component_eq : carriedComponent = delta - projection delta
  projection_idempotent_on_delta : projection (projection delta) = projection delta

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

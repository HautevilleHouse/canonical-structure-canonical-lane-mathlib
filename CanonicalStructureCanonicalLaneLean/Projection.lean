import CanonicalStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def canonicalProjection : Projection CanonicalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem canonical_projection_idempotent (x : CanonicalEndgameState) :
    canonicalProjection.toFun (canonicalProjection.toFun x) = canonicalProjection.toFun x := by
  exact canonicalProjection.idempotent x

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

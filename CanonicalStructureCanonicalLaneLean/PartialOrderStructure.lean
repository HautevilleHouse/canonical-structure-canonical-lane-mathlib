import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A partial order adds antisymmetry to a preorder.
structure PartialOrderCarrier where
  Carrier : Type u
  le : Carrier → Carrier → Prop
  le_refl : ∀ x : Carrier, le x x
  le_trans : ∀ x y z : Carrier, le x y → le y z → le x z
  le_antisymm : ∀ x y : Carrier, le x y → le y x → x = y

structure PartialOrderEvidence (P : PartialOrderCarrier) where
  le_refl_closed : P.le_refl
  le_trans_closed : P.le_trans
  le_antisymm_closed : P.le_antisymm

def PartialOrderClosed (P : PartialOrderCarrier) : Prop :=
  P.le_refl ∧ P.le_trans ∧ P.le_antisymm

theorem partial_order_closed_from_evidence (P : PartialOrderCarrier) (E : PartialOrderEvidence P) : PartialOrderClosed P :=
  And.intro E.le_refl_closed (And.intro E.le_trans_closed E.le_antisymm_closed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
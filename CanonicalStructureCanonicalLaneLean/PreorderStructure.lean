import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A preorder on a carrier set with reflexivity and transitivity.
structure PreorderCarrier where
  Carrier : Type u
  le : Carrier → Carrier → Prop
  le_refl : ∀ x : Carrier, le x x
  le_trans : ∀ x y z : Carrier, le x y → le y z → le x z

structure PreorderEvidence (P : PreorderCarrier) where
  le_refl_closed : P.le_refl
  le_trans_closed : P.le_trans

def PreorderClosed (P : PreorderCarrier) : Prop :=
  P.le_refl ∧ P.le_trans

theorem preorder_closed_from_evidence (P : PreorderCarrier) (E : PreorderEvidence P) : PreorderClosed P :=
  And.intro E.le_refl_closed E.le_trans_closed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
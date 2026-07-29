import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A lattice: a partial order with joins and meets.
structure LatticeCarrier where
  PartialOrder : PartialOrderCarrier
  join : PartialOrder.Carrier → PartialOrder.Carrier → PartialOrder.Carrier
  meet : PartialOrder.Carrier → PartialOrder.Carrier → PartialOrder.Carrier
  join_upper_left : ∀ a b : PartialOrder.Carrier, PartialOrder.le a (join a b)
  join_upper_right : ∀ a b : PartialOrder.Carrier, PartialOrder.le b (join a b)
  join_least : ∀ a b c : PartialOrder.Carrier, PartialOrder.le a c → PartialOrder.le b c → PartialOrder.le (join a b) c
  meet_lower_left : ∀ a b : PartialOrder.Carrier, PartialOrder.le (meet a b) a
  meet_lower_right : ∀ a b : PartialOrder.Carrier, PartialOrder.le (meet a b) b
  meet_greatest : ∀ a b c : PartialOrder.Carrier, PartialOrder.le c a → PartialOrder.le c b → PartialOrder.le c (meet a b)

structure LatticeEvidence (L : LatticeCarrier) where
  join_properties_closed : L.join_upper_left ∧ L.join_upper_right ∧ L.join_least
  meet_properties_closed : L.meet_lower_left ∧ L.meet_lower_right ∧ L.meet_greatest

def LatticeClosed (L : LatticeCarrier) : Prop :=
  L.join_upper_left ∧ L.join_upper_right ∧ L.join_least ∧
  L.meet_lower_left ∧ L.meet_lower_right ∧ L.meet_greatest

theorem lattice_closed_from_evidence (L : LatticeCarrier) (E : LatticeEvidence L) : LatticeClosed L :=
  match E with
  | { join_properties_closed := ⟨h1, h2, h3⟩, meet_properties_closed := ⟨h4, h5, h6⟩ } =>
    And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
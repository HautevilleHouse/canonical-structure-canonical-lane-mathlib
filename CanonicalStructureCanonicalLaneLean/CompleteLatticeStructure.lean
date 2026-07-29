import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A complete lattice: a lattice with arbitrary joins and meets.
structure CompleteLatticeCarrier where
  Lattice : LatticeCarrier
  carrierType : Type u := Lattice.PartialOrder.Carrier
  Sup : Set carrierType → carrierType
  Inf : Set carrierType → carrierType
  Sup_upper : ∀ (s : Set carrierType) (x : carrierType), x ∈ s → Lattice.PartialOrder.le x (Sup s)
  Sup_least : ∀ (s : Set carrierType) (b : carrierType), (∀ x ∈ s, Lattice.PartialOrder.le x b) → Lattice.PartialOrder.le (Sup s) b
  Inf_lower : ∀ (s : Set carrierType) (x : carrierType), x ∈ s → Lattice.PartialOrder.le (Inf s) x
  Inf_greatest : ∀ (s : Set carrierType) (b : carrierType), (∀ x ∈ s, Lattice.PartialOrder.le b x) → Lattice.PartialOrder.le b (Inf s)

structure CompleteLatticeEvidence (CL : CompleteLatticeCarrier) where
  Sup_closed : CL.Sup_upper ∧ CL.Sup_least
  Inf_closed : CL.Inf_lower ∧ CL.Inf_greatest

def CompleteLatticeClosed (CL : CompleteLatticeCarrier) : Prop :=
  CL.Sup_upper ∧ CL.Sup_least ∧ CL.Inf_lower ∧ CL.Inf_greatest

theorem complete_lattice_closed_from_evidence (CL : CompleteLatticeCarrier) (E : CompleteLatticeEvidence CL) : CompleteLatticeClosed CL :=
  match E with
  | { Sup_closed := ⟨h1, h2⟩, Inf_closed := ⟨h3, h4⟩ } =>
    And.intro h1 (And.intro h2 (And.intro h3 h4))

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
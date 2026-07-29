import Mathlib.Structures.SetWithBinary

/-!
# Canonical Object Package

This module defines a generic canonical algebraic object with a distinguished element
and a universal property. It serves as the base structure for admissible-class closure.
-/

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalPackage where
  carrierType : Type u
  distinguishedElement : carrierType
  canonicalMap : carrierType → carrierType
  idempotence : canonicalMap (canonicalMap distinguishedElement) = canonicalMap distinguishedElement
  universalProperty : ∀ (x : carrierType), canonicalMap x = distinguishedElement → x = distinguishedElement

structure CanonicalEvidence (C : CanonicalPackage) where
  distinguishedElementClosed : C.distinguishedElement = C.distinguishedElement
  canonicalMapClosed : ∀ x, C.canonicalMap x = C.canonicalMap x
  idempotenceClosed : C.idempotence
  universalPropertyClosed : C.universalProperty

def CanonicalClosed (C : CanonicalPackage) : Prop :=
  C.idempotence ∧ C.universalProperty

theorem canonical_closed_from_evidence (C : CanonicalPackage) (E : CanonicalEvidence C) : CanonicalClosed C :=
  And.intro E.idempotenceClosed E.universalPropertyClosed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
import CanonicalStructureCanonicalLaneLean.CanonicalStructureCore

/-!
# Normal Forms Package

This module defines normal form structures and their properties.
-/

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure NormalFormsPackage (C : CanonicalStructurePackage) where
  normalFormAlgorithm : Type u
  terminationProperty : Prop
  confluenceProperty : Prop
  ChurchRosserProperty : Prop

structure NormalFormsEvidence {C : CanonicalStructurePackage}
    (N : NormalFormsPackage C) where
  terminationPropertyClosed : N.terminationProperty
  confluencePropertyClosed : N.confluenceProperty
  ChurchRosserPropertyClosed : N.ChurchRosserProperty

def NormalFormsClosed {C : CanonicalStructurePackage}
    (N : NormalFormsPackage C) : Prop :=
  N.terminationProperty ∧ N.confluenceProperty ∧ N.ChurchRosserProperty

theorem normal_forms_closed_from_evidence
    {C : CanonicalStructurePackage} (N : NormalFormsPackage C)
    (E : NormalFormsEvidence N) : NormalFormsClosed N := by
  exact And.intro E.terminationPropertyClosed
    (And.intro E.confluencePropertyClosed E.ChurchRosserPropertyClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

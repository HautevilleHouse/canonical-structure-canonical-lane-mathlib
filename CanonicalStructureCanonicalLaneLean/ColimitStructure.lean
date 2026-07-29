import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalStructureCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure ColimitStructurePackage {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  diagram : Type
  colimitObject : A.object
  coconeProperty : Prop
  universalProperty : U.factorization

structure ColimitStructureEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (C : ColimitStructurePackage U) where
  colimitObjectClosed : True
  coconePropertyClosed : C.coconeProperty
  universalPropertyClosed : C.universalProperty

def ColimitStructureClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} (C : ColimitStructurePackage U) : Prop :=
  True ∧ C.coconeProperty ∧ C.universalProperty

theorem colimit_structure_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (C : ColimitStructurePackage U) (E : ColimitStructureEvidence C) : ColimitStructureClosed C := by
  exact And.intro E.colimitObjectClosed (And.intro E.coconePropertyClosed E.universalPropertyClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalStructureCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure LimitStructurePackage {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  diagram : Type
  limitObject : A.object
  coneProperty : Prop
  universalProperty : U.factorization

structure LimitStructureEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (L : LimitStructurePackage U) where
  limitObjectClosed : True
  conePropertyClosed : L.coneProperty
  universalPropertyClosed : L.universalProperty

def LimitStructureClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} (L : LimitStructurePackage U) : Prop :=
  True ∧ L.coneProperty ∧ L.universalProperty

theorem limit_structure_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (L : LimitStructurePackage U) (E : LimitStructureEvidence L) : LimitStructureClosed L := by
  exact And.intro E.limitObjectClosed (And.intro E.conePropertyClosed E.universalPropertyClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
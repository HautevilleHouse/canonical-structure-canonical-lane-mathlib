import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure JordanCanonicalFormPackage where
  matrix : Type u
  field : Type v
  characteristicPolynomial : Prop
  minimalPolynomial : Prop
  jordanBlocks : Prop
  existence : Prop
  uniqueness : Prop

structure JordanCanonicalFormEvidence (P : JordanCanonicalFormPackage) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness

def JordanCanonicalFormClosed (P : JordanCanonicalFormPackage) : Prop :=
  P.existence ∧ P.uniqueness

theorem jordan_canonical_form_closed_from_evidence (P : JordanCanonicalFormPackage)
    (E : JordanCanonicalFormEvidence P) : JordanCanonicalFormClosed P := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
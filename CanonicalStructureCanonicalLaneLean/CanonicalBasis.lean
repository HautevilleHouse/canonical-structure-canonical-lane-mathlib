import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalBasisPackage (A : AdmissibleClass) where
  vectorSpace : Type u
  basisExists : Prop
  basisOrthonormal : Prop
  basisOrdered : Prop
  basisClosed : Prop

structure CanonicalBasisEvidence {A : AdmissibleClass}
    (B : CanonicalBasisPackage A) where
  basisExistsClosed : B.basisExists
  basisOrthonormalClosed : B.basisOrthonormal
  basisOrderedClosed : B.basisOrdered
  basisClosedClosed : B.basisClosed

def CanonicalBasisClosed {A : AdmissibleClass}
    (B : CanonicalBasisPackage A) : Prop :=
  B.basisExists ∧ B.basisOrthonormal ∧ B.basisOrdered ∧ B.basisClosed

theorem canonical_basis_closed_from_evidence
    {A : AdmissibleClass} (B : CanonicalBasisPackage A)
    (E : CanonicalBasisEvidence B) : CanonicalBasisClosed B := by
  exact And.intro E.basisExistsClosed
    (And.intro E.basisOrthonormalClosed
      (And.intro E.basisOrderedClosed E.basisClosedClosed))

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure CanonicalFormDecompositionPackage (A : AdmissibleClass) where
  targetObject : Type u
  decompositionExists : Prop
  uniquenessUpToEquivalence : Prop
  algorithmProvided : Prop
  decompositionClosed : Prop

structure CanonicalFormDecompositionEvidence {A : AdmissibleClass}
    (P : CanonicalFormDecompositionPackage A) where
  decompositionExistsClosed : P.decompositionExists
  uniquenessUpToEquivalenceClosed : P.uniquenessUpToEquivalence
  algorithmProvidedClosed : P.algorithmProvided
  decompositionClosedClosed : P.decompositionClosed

def CanonicalFormDecompositionClosed {A : AdmissibleClass}
    (P : CanonicalFormDecompositionPackage A) : Prop :=
  P.decompositionExists ∧ P.uniquenessUpToEquivalence ∧
  P.algorithmProvided ∧ P.decompositionClosed

theorem canonical_form_decomposition_closed_from_evidence
    {A : AdmissibleClass} (P : CanonicalFormDecompositionPackage A)
    (E : CanonicalFormDecompositionEvidence P) :
    CanonicalFormDecompositionClosed P := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.uniquenessUpToEquivalenceClosed
      (And.intro E.algorithmProvidedClosed E.decompositionClosedClosed))

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
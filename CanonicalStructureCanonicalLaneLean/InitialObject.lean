import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalStructureCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure InitialObjectPackage {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  initialObject : A.object
  universalMorphism : U.factorization
  uniqueEndomorphism : U.uniqueness

structure InitialObjectEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (I : InitialObjectPackage U) where
  initialObjectClosed : True
  universalMorphismClosed : I.universalMorphism
  uniqueEndomorphismClosed : I.uniqueEndomorphism

def InitialObjectClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} (I : InitialObjectPackage U) : Prop :=
  True ∧ I.universalMorphism ∧ I.uniqueEndomorphism

theorem initial_object_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (I : InitialObjectPackage U) (E : InitialObjectEvidence I) : InitialObjectClosed I := by
  exact And.intro E.initialObjectClosed (And.intro E.universalMorphismClosed E.uniqueEndomorphismClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
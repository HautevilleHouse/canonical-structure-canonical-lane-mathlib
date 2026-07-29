import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalStructureCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure TerminalObjectPackage {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  terminalObject : A.object
  universalMorphism : U.factorization
  uniqueEndomorphism : U.uniqueness

structure TerminalObjectEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (T : TerminalObjectPackage U) where
  terminalObjectClosed : True
  universalMorphismClosed : T.universalMorphism
  uniqueEndomorphismClosed : T.uniqueEndomorphism

def TerminalObjectClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} (T : TerminalObjectPackage U) : Prop :=
  True ∧ T.universalMorphism ∧ T.uniqueEndomorphism

theorem terminal_object_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (T : TerminalObjectPackage U) (E : TerminalObjectEvidence T) : TerminalObjectClosed T := by
  exact And.intro E.terminalObjectClosed (And.intro E.universalMorphismClosed E.uniqueEndomorphismClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
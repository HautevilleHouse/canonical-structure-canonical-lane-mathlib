import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure UniversalMorphismPackage where
  sourceObject : Type u
  targetObject : Type v
  universalProperty : ∀ (Z : Type w) (morph : Z → targetObject), ∃! lift : Z → sourceObject, (universalMap ∘ lift = morph)
  universalMap : sourceObject → targetObject
  uniqueness : Prop

def UniversalMorphismClosed (P : UniversalMorphismPackage) : Prop :=
  P.universalProperty ∧ P.uniqueness

theorem universal_morphism_closed (P : UniversalMorphismPackage) :
    UniversalMorphismClosed P := by
  exact And.intro P.universalProperty P.uniqueness

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

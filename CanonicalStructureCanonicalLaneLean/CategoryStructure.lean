import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A category: objects, morphisms, composition, identities.
structure CategoryData where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  comp_assoc : {X Y Z W : Obj} (f : Hom X Y) (g : Hom Y Z) (h : Hom Z W) → comp (comp f g) h = comp f (comp g h)
  id_left : {X Y : Obj} (f : Hom X Y) → comp (id X) f = f
  id_right : {X Y : Obj} (f : Hom X Y) → comp f (id Y) = f

structure CategoryEvidence (C : CategoryData) where
  comp_assoc_closed : C.comp_assoc
  id_left_closed : C.id_left
  id_right_closed : C.id_right

def CategoryClosed (C : CategoryData) : Prop :=
  C.comp_assoc ∧ C.id_left ∧ C.id_right

theorem category_closed_from_evidence (C : CategoryData) (E : CategoryEvidence C) : CategoryClosed C :=
  And.intro E.comp_assoc_closed (And.intro E.id_left_closed E.id_right_closed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
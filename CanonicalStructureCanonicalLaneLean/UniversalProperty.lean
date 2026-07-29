import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure UniversalPropertyPackage (A : AdmissibleClass) where
  object : A.object
  property : Prop
  factorization : Prop
  uniqueness : Prop

structure UniversalPropertyEvidence {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  propertyClosed : U.property
  factorizationClosed : U.factorization
  uniquenessClosed : U.uniqueness

def UniversalPropertyClosed {A : AdmissibleClass} (U : UniversalPropertyPackage A) : Prop :=
  U.property ∧ U.factorization ∧ U.uniqueness

theorem universal_property_closed_from_evidence {A : AdmissibleClass} (U : UniversalPropertyPackage A) (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.propertyClosed (And.intro E.factorizationClosed E.uniquenessClosed)

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
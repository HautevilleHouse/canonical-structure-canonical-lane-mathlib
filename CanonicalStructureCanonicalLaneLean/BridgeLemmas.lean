import canonicalLaneMathlib.CanonicalAdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

def bridgeClosed (A : CanonicalAdmissibleClass) : Prop :=
  canonicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : CanonicalAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

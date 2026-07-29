import canonicalLaneMathlib.AdmissibleClass
import CanonicalStructureCanonicalLaneLean.CanonicalStructureObjects

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | CanonicalAdmittedObject.mk obj h => h

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- A.object.conclusion is the witness
  exact A.object.conclusion

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
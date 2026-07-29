import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure IsomorphismDualityPackage where
  dualPair : Type u
  dualityMapping : dualPair → dualPair
  bijectivity : Function.Bijective dualityMapping
  structurePreservation : Prop

def DualityClosed (P : IsomorphismDualityPackage) : Prop :=
  P.bijectivity ∧ P.structurePreservation

theorem duality_closed_from_bijectivity (P : IsomorphismDualityPackage) :
    DualityClosed P := by
  exact And.intro P.bijectivity P.structurePreservation

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

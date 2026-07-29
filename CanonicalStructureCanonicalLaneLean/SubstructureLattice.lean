import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

structure SubstructureLatticePackage where
  baseStructure : Type u
  subStructures : Set (Set baseStructure)
  closureUnderOperations : Prop
  latticeComplete : Prop

def SubstructureLatticeClosed (P : SubstructureLatticePackage) : Prop :=
  P.closureUnderOperations ∧ P.latticeComplete

theorem substructure_lattice_closed (P : SubstructureLatticePackage) :
    SubstructureLatticeClosed P := by
  exact And.intro P.closureUnderOperations P.latticeComplete

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

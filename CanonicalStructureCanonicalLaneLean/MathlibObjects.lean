import CanonicalStructureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CanonicalStructure where
  carrier : Type
  topology : TopologicalSpace carrier

structure CanonicalAdmittedObject where
  space : CanonicalStructure
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure CanonicalEndgameState where
  object : CanonicalAdmittedObject

def CanonicalWitnessClosed (O : CanonicalAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse

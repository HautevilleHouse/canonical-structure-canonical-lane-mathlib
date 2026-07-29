import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalStructureCanonicalLaneLean

-- A Galois connection between two preorders.
structure GaloisConnectionData where
  A : PreorderCarrier
  B : PreorderCarrier
  f : A.Carrier → B.Carrier
  g : B.Carrier → A.Carrier
  adj : ∀ a b, A.le a (g b) ↔ B.le (f a) b

structure GaloisConnectionEvidence (G : GaloisConnectionData) where
  adj_closed : G.adj

def GaloisConnectionClosed (G : GaloisConnectionData) : Prop :=
  G.adj

theorem galois_connection_closed_from_evidence (G : GaloisConnectionData) (E : GaloisConnectionEvidence G) : GaloisConnectionClosed G :=
  E.adj_closed

end CanonicalStructureCanonicalLaneLean
end HautevilleHouse
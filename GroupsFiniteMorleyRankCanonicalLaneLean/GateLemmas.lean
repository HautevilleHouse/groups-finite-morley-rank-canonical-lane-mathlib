import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
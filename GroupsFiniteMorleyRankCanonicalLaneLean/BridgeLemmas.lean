import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.GroupTheoryMorleyRank

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorleyRankFiniteWitness A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.rankFiniteWitness

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
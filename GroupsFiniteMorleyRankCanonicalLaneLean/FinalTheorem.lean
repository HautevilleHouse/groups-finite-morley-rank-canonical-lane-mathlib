import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.BorovikConjecture

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

def ConstrainedMorleyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morley_endgame (A : AdmissibleClass) : ConstrainedMorleyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
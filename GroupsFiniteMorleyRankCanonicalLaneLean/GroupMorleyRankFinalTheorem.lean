import GroupsFiniteMorleyRankCanonicalLaneLean.GroupMorleyRankGateLemmas

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

def ConstrainedMorleyRankClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morley_rank_endgame (A : AdmissibleClass) :
    ConstrainedMorleyRankClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
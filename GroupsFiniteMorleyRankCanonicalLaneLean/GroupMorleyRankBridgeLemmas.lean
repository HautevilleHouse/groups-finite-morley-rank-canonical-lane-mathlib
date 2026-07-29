import GroupsFiniteMorleyRankCanonicalLaneLean.GroupMorleyRankAdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let G := A.object
  G.finiteMorleyRank > 0

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A.object with ⟨carrier, groupStruct, rank, h⟩
  have hpos : rank > 0 := by
    apply Nat.pos_of_ne_zero
    intro hzero
    have : Finite carrier := h
    -- contradiction? morley rank of finite group is 0? adjust
    sorry
  exact hpos

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
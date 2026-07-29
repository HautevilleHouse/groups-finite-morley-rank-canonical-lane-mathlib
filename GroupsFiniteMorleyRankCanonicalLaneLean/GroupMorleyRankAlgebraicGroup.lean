import GroupsFiniteMorleyRankCanonicalLaneLean.GroupMorleyRankClassification

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure AlgebraicGroupPackage where
  groupType : Type u
  groupStructure : Group groupType
  zariskiTopology : TopologicalSpace groupType
  connected : Prop
  dimension : ℕ
  morleyRank : ℕ
  dimensionEqualsMorleyRank : Prop

structure AlgebraicGroupEvidence (A : AlgebraicGroupPackage) where
  connectedClosed : A.connected
  dimensionEqualsMorleyRankClosed : A.dimensionEqualsMorleyRank

def AlgebraicGroupClosed (A : AlgebraicGroupPackage) : Prop :=
  A.connected ∧ A.dimensionEqualsMorleyRank

theorem algebraic_group_closed_from_evidence
    (A : AlgebraicGroupPackage) (E : AlgebraicGroupEvidence A) :
    AlgebraicGroupClosed A := by
  exact And.intro E.connectedClosed E.dimensionEqualsMorleyRankClosed

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
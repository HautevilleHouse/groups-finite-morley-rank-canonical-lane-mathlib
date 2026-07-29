import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyRankStructure where
  group : Type u
  groupMul : group → group → group
  groupInv : group → group
  groupOne : group
  groupMulAssoc : ∀ a b c : group, groupMul (groupMul a b) c = groupMul a (groupMul b c)
  groupOneMul : ∀ a : group, groupMul groupOne a = a
  groupMulOne : ∀ a : group, groupMul a groupOne = a
  groupMulInv : ∀ a : group, groupMul a (groupInv a) = groupOne
  groupInvMul : ∀ a : group, groupMul (groupInv a) a = groupOne
  topology : TopologicalSpace group
  continuousGroupMul : Continuous (λ p : group × group => groupMul p.1 p.2)
  continuousGroupInv : Continuous groupInv
  morleyRank : ℕ
  morleyRankFinite : morleyRank < ∞
  connectedComponent : Type u
  connectedComponentTopology : TopologicalSpace connectedComponent
  connectedComponentGroup : Group connectedComponent
  connectedComponentOpen : Prop
  connectedComponentClosed : Prop
  connectedComponentNormal : Prop
  quotientByConnected : Type u
  quotientTopology : TopologicalSpace quotientByConnected
  quotientGroup : Group quotientByConnected
  quotientFinite : Fintype quotientByConnected

def MorleyRankStructureClosed (M : MorleyRankStructure) : Prop :=
  M.morleyRankFinite ∧
  M.connectedComponentOpen ∧
  M.connectedComponentClosed ∧
  M.connectedComponentNormal ∧
  M.quotientFinite

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

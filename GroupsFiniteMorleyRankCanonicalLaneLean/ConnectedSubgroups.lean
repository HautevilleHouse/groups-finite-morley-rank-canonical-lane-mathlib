import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure ConnectedSubgroupsPackage {M : MorleyRankStructurePackage} where
  connectedComponentExists : Prop
  connectedComponentNormal : Prop
  connectedComponentDefinable : Prop

structure ConnectedSubgroupsEvidence {M : MorleyRankStructurePackage}
    (C : ConnectedSubgroupsPackage M) where
  connectedComponentExistsClosed : C.connectedComponentExists
  connectedComponentNormalClosed : C.connectedComponentNormal
  connectedComponentDefinableClosed : C.connectedComponentDefinable

def ConnectedSubgroupsClosed {M : MorleyRankStructurePackage}
    (C : ConnectedSubgroupsPackage M) : Prop :=
  C.connectedComponentExists ∧ C.connectedComponentNormal ∧ C.connectedComponentDefinable

theorem connected_subgroups_closed_from_evidence
    {M : MorleyRankStructurePackage} (C : ConnectedSubgroupsPackage M)
    (E : ConnectedSubgroupsEvidence C) : ConnectedSubgroupsClosed C := by
  exact And.intro E.connectedComponentExistsClosed
    (And.intro E.connectedComponentNormalClosed E.connectedComponentDefinableClosed)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
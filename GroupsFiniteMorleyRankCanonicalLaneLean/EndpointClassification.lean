import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure EndpointClassificationPackage {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} {B : BorovikProgramPackage M C} where
  simpleGroupClassified : Prop
  endpointReached : Prop
  morleyRankMatches : Prop

structure EndpointClassificationEvidence {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} {B : BorovikProgramPackage M C}
    (E : EndpointClassificationPackage M C B) where
  simpleGroupClassifiedClosed : E.simpleGroupClassified
  endpointReachedClosed : E.endpointReached
  morleyRankMatchesClosed : E.morleyRankMatches

def EndpointClassificationClosed {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} {B : BorovikProgramPackage M C}
    (E : EndpointClassificationPackage M C B) : Prop :=
  E.simpleGroupClassified ∧ E.endpointReached ∧ E.morleyRankMatches

theorem endpoint_classification_closed_from_evidence
    {M : MorleyRankStructurePackage} {C : ConnectedSubgroupsPackage M}
    {B : BorovikProgramPackage M C} (Epkg : EndpointClassificationPackage M C B)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro E.simpleGroupClassifiedClosed
    (And.intro E.endpointReachedClosed E.morleyRankMatchesClosed)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
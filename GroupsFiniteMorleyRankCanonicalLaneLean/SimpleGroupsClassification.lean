import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.MorleyRankStructures

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure SimpleGroupClassification {M : MorleyRankStructure} where
  simpleGroup : M.group
  isSimple : Prop
  classificationType : String
  rankOneGroup : Prop
  rankOneProof : rankOneGroup
  classificationComplete : Prop
  classificationProof : classificationComplete

def SimpleGroupClassificationClosed {M : MorleyRankStructure} (S : SimpleGroupClassification M) : Prop :=
  S.rankOneGroup ∧
  S.classificationComplete

theorem simple_group_classification_closed_from_evidence {M : MorleyRankStructure}
    (S : SimpleGroupClassification M) : SimpleGroupClassificationClosed S := by
  exact And.intro S.rankOneProof S.classificationProof

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

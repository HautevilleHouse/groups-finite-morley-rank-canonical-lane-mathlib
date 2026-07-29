import GroupsFiniteMorleyRankCanonicalLaneLean.GroupMorleyRankFinalTheorem

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure ClassificationPackage where
  groupType : Type u
  groupStructure : Group groupType
  simpleSections : List (Subgroup groupType)
  rankDistribution : ℕ → ℕ
  classificationComplete : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.classificationComplete

theorem classification_closed_from_evidence
    (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact E.classificationCompleteClosed

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
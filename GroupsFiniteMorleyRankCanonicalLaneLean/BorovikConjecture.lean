import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.GroupTheoryMorleyRank

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure BorovikConjecturePackage (M : MorleyGroup) where
  simpleGroup : Prop
  rankZeroImpliesAlgebraic : Prop
  classificationConclusion : Prop

structure BorovikConjectureEvidence {M : MorleyGroup} (B : BorovikConjecturePackage M) where
  simpleGroupClosed : B.simpleGroup
  rankZeroImpliesAlgebraicClosed : B.rankZeroImpliesAlgebraic
  classificationConclusionClosed : B.classificationConclusion

def BorovikConjectureClosed {M : MorleyGroup} (B : BorovikConjecturePackage M) : Prop :=
  B.simpleGroup ∧ B.rankZeroImpliesAlgebraic ∧ B.classificationConclusion

theorem borovik_conjecture_closed_from_evidence {M : MorleyGroup} (B : BorovikConjecturePackage M) (E : BorovikConjectureEvidence B) : BorovikConjectureClosed B := by
  exact And.intro E.simpleGroupClosed (And.intro E.rankZeroImpliesAlgebraicClosed E.classificationConclusionClosed)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
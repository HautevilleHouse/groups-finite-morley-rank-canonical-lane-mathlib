import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure GenericityPackage where
  genericType : Type u
  genericCover : Prop
  intersectionCondition : Prop
  densityCondition : Prop
  torsionFreeCondition : Prop

structure GenericityEvidence (G : GenericityPackage) where
  genericCoverClosed : G.genericCover
  intersectionConditionClosed : G.intersectionCondition
  densityConditionClosed : G.densityCondition
  torsionFreeConditionClosed : G.torsionFreeCondition

def GenericityClosed (G : GenericityPackage) : Prop :=
  G.genericCover ∧ G.intersectionCondition ∧ G.densityCondition ∧ G.torsionFreeCondition

theorem genericity_closed_from_evidence
    (G : GenericityPackage) (E : GenericityEvidence G) : GenericityClosed G := by
  exact And.intro E.genericCoverClosed
    (And.intro E.intersectionConditionClosed
      (And.intro E.densityConditionClosed E.torsionFreeConditionClosed))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
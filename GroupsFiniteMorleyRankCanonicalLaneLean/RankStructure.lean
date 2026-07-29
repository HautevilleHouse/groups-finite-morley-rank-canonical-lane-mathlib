import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure RankStructurePackage where
  rankFunction : Type u
  rankAdditivity : Prop
  rankSubadditivity : Prop
  rankDefinite : Prop
  rankContinuity : Prop

structure RankStructureEvidence (R : RankStructurePackage) where
  rankAdditivityClosed : R.rankAdditivity
  rankSubadditivityClosed : R.rankSubadditivity
  rankDefiniteClosed : R.rankDefinite
  rankContinuityClosed : R.rankContinuity

def RankStructureClosed (R : RankStructurePackage) : Prop :=
  R.rankAdditivity ∧ R.rankSubadditivity ∧ R.rankDefinite ∧ R.rankContinuity

theorem rank_structure_closed_from_evidence
    (R : RankStructurePackage) (E : RankStructureEvidence R) : RankStructureClosed R := by
  exact And.intro E.rankAdditivityClosed
    (And.intro E.rankSubadditivityClosed
      (And.intro E.rankDefiniteClosed E.rankContinuityClosed))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
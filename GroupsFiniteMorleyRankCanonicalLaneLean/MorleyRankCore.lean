import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyRankCore where
  rankN : Prop
  rankAdditive : Prop
  rankDefinite : Prop
  rankSubadditive : Prop
  rankCofiniteDropped : Prop
  rankNClosed : rankN
  rankAdditiveClosed : rankAdditive
  rankDefiniteClosed : rankDefinite
  rankSubadditiveClosed : rankSubadditive
  rankCofiniteDroppedClosed : rankCofiniteDropped

def MorleyRankCoreClosed (M : MorleyRankCore) : Prop :=
  M.rankN ∧ M.rankAdditive ∧ M.rankDefinite ∧ M.rankSubadditive ∧ M.rankCofiniteDropped

theorem morley_rank_core_closed (M : MorleyRankCore) : MorleyRankCoreClosed M :=
  And.intro M.rankNClosed (And.intro M.rankAdditiveClosed (And.intro M.rankDefiniteClosed (And.intro M.rankSubadditiveClosed M.rankCofiniteDroppedClosed)))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

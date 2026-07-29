import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure BorovikAnalysisPackage where
  minimalSimpleGroup : Prop
  classificationOfRank1 : Prop
  rank1GroupsListed : Prop
  connectedCaseResolved : Prop
  indecomposableDecomposition : Prop

def BorovikAnalysisPackageClosed (B : BorovikAnalysisPackage) : Prop :=
  B.minimalSimpleGroup ∧ B.classificationOfRank1 ∧ B.rank1GroupsListed ∧ B.connectedCaseResolved ∧ B.indecomposableDecomposition

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

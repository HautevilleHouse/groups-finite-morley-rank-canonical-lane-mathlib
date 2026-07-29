import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure AlgebraicGroupModel where
  baseField : Type
  baseFieldAlgebraicallyClosed : Prop
  algebraicGroup : Type
  groupLaws : Prop
  definableIsConstructible : Prop
  rankMatchesDimension : Prop

def AlgebraicGroupModelClosed (A : AlgebraicGroupModel) : Prop :=
  A.baseFieldAlgebraicallyClosed ∧ A.groupLaws ∧ A.definableIsConstructible ∧ A.rankMatchesDimension

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

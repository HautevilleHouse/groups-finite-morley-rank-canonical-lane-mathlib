import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure ChernikovTheoryPackage where
  chernikovGroups : Type
  chernikovDefinition : Prop
  rankProperty : Prop
  chernikovClassification : Prop
  souslinCondition : Prop

def ChernikovTheoryPackageClosed (C : ChernikovTheoryPackage) : Prop :=
  C.chernikovDefinition ∧ C.rankProperty ∧ C.chernikovClassification ∧ C.souslinCondition

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

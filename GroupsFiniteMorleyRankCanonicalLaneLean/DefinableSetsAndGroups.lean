import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure DefinableSetsPackage where
  universe : Type
  definableSubsets : Set (Set universe)
  closureUnderBoolean : Prop
  closureUnderProjections : Prop
  closureUnderFiniteQuantifiers : Prop

def DefinableSetsPackageClosed (D : DefinableSetsPackage) : Prop :=
  D.closureUnderBoolean ∧ D.closureUnderProjections ∧ D.closureUnderFiniteQuantifiers

structure DefinableGroup where
  underlyingSet : Set (universe : Type)
  groupOperation : underlyingSet → underlyingSet → underlyingSet
  definable : Prop
  groupAxioms : Prop

def DefinableGroupClosed (G : DefinableGroup) : Prop :=
  G.definable ∧ G.groupAxioms

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

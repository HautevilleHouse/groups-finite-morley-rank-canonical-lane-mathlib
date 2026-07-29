import canonicalLaneMathlib.AdmissibleClass
import Mathlib.GroupTheory.Sylow

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyRankStructurePackage where
  group : MorleyGroup
  rankBound : ℕ
  rankDefined : Prop
  solvableSubgroupsClassified : Prop
  unipotentSubgroupsClassified : Prop

structure MorleyRankStructureEvidence (M : MorleyRankStructurePackage) where
  rankDefinedClosed : M.rankDefined
  solvableSubgroupsClassifiedClosed : M.solvableSubgroupsClassified
  unipotentSubgroupsClassifiedClosed : M.unipotentSubgroupsClassified

def MorleyRankStructureClosed (M : MorleyRankStructurePackage) : Prop :=
  M.rankDefined ∧ M.solvableSubgroupsClassified ∧ M.unipotentSubgroupsClassified

theorem morley_rank_structure_closed_from_evidence (M : MorleyRankStructurePackage)
    (E : MorleyRankStructureEvidence M) : MorleyRankStructureClosed M := by
  exact And.intro E.rankDefinedClosed
    (And.intro E.solvableSubgroupsClassifiedClosed E.unipotentSubgroupsClassifiedClosed)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
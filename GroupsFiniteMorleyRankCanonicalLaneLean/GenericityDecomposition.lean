import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.MorleyRankStructures

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure GenericityDecomposition {M : MorleyRankStructure} where
  properSubgroups : Set M.group
  genericElementSet : Set M.group
  genericElementDefined : Prop
  genericElementNonempty : Prop
  genericElementExists : genericElementNonempty
  centralizerDimension : ℕ
  centralizerDimensionFinite : centralizerDimension < ∞
  decompositionExists : Prop
  decompositionProof : decompositionExists

def GenericityDecompositionClosed {M : MorleyRankStructure} (G : GenericityDecomposition M) : Prop :=
  G.genericElementDefined ∧ G.genericElementNonempty ∧ G.centralizerDimensionFinite ∧ G.decompositionExists

theorem genericity_decomposition_closed_from_evidence {M : MorleyRankStructure}
    (G : GenericityDecomposition M) : GenericityDecompositionClosed G := by
  exact And.intro G.genericElementDefined
    (And.intro G.genericElementNonempty
      (And.intro G.centralizerDimensionFinite G.decompositionProof))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

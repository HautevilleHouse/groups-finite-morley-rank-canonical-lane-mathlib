import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure BorovikProgramPackage {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} where
  classificationOfSimpleGroups : Prop
  genericityProperty : Prop
  involutionsControlled : Prop

structure BorovikProgramEvidence {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} (B : BorovikProgramPackage M C) where
  classificationOfSimpleGroupsClosed : B.classificationOfSimpleGroups
  genericityPropertyClosed : B.genericityProperty
  involutionsControlledClosed : B.involutionsControlled

def BorovikProgramClosed {M : MorleyRankStructurePackage}
    {C : ConnectedSubgroupsPackage M} (B : BorovikProgramPackage M C) : Prop :=
  B.classificationOfSimpleGroups ∧ B.genericityProperty ∧ B.involutionsControlled

theorem borovik_program_closed_from_evidence
    {M : MorleyRankStructurePackage} {C : ConnectedSubgroupsPackage M}
    (B : BorovikProgramPackage M C) (E : BorovikProgramEvidence B) :
    BorovikProgramClosed B := by
  exact And.intro E.classificationOfSimpleGroupsClosed
    (And.intro E.genericityPropertyClosed E.involutionsControlledClosed)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
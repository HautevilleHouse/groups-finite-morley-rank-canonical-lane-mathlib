import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.MorleyRankStructures

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure SignalizerFunctor {M : MorleyRankStructure} where
  domain : Set M.group
  codomain : Set M.group
  functorMap : M.group → M.group
  functorDefined : Prop
  functorEquivariant : Prop
  functorContinuous : Prop
  functorSatisfiesAxioms : Prop
  functorDefinedProof : functorDefined
  functorEquivariantProof : functorEquivariant
  functorContinuousProof : functorContinuous
  functorAxiomsProof : functorSatisfiesAxioms

def SignalizerFunctorClosed {M : MorleyRankStructure} (S : SignalizerFunctor M) : Prop :=
  S.functorDefined ∧ S.functorEquivariant ∧ S.functorContinuous ∧ S.functorSatisfiesAxioms

theorem signalizer_functor_closed_from_evidence {M : MorleyRankStructure}
    (S : SignalizerFunctor M) : SignalizerFunctorClosed S := by
  exact And.intro S.functorDefinedProof
    (And.intro S.functorEquivariantProof
      (And.intro S.functorContinuousProof S.functorAxiomsProof))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

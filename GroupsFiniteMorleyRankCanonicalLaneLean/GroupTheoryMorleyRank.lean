import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyGroup where
  carrier : Type u
  group : Group carrier
  finiteMorleyRank : ℕ
  connected : Prop
  torsionFree : Prop

structure MorleyRankStructure (M : MorleyGroup) where
  definableSubgroups : List (Set M.carrier)
  rankFunction : Set M.carrier → ℕ
  additivity : ∀ (A B : Set M.carrier), rankFunction (A ∪ B) ≤ rankFunction A + rankFunction B
  nullDefinableCase : rankFunction (∅ : Set M.carrier) = 0

structure MorleyRankAdmittedObject where
  morleyGroup : MorleyGroup
  rankStructure : MorleyRankStructure morleyGroup
  rankFiniteWitness : morleyGroup.finiteMorleyRank = 0 → morleyGroup.connected

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MorleyGroup where
  space : MorleySpace
  groupLaw : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  groupAxioms : Group (carrier := space.carrier, mul := groupLaw, one := identity, inv := inverse)
  finiteMorleyRank : ℕ
  morleyRankBound : rank groupAxioms ≤ finiteMorleyRank

structure MorleyAdmittedObject where
  group : MorleyGroup
  connected : Prop
  simple : Prop
  conclusion : connected ∧ simple

def MorleyWitnessClosed (O : MorleyAdmittedObject) : Prop :=
  O.connected ∧ O.simple

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
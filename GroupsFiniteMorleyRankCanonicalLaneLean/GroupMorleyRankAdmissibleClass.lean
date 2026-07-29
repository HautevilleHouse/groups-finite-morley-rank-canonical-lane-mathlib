import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyRankGroup where
  carrier : Type u
  groupStructure : Group carrier
  finiteMorleyRank : ℕ
  morleyRankFinite : Finite carriermorleyRank

def MorleyRankGroup.toAdmissibleClass (G : MorleyRankGroup) : AdmissibleClass :=
  { object := G
    endpointSatisfied := False
    remainderRecorded := False
    gateWitness := Or.inr (by trivial)
  }

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
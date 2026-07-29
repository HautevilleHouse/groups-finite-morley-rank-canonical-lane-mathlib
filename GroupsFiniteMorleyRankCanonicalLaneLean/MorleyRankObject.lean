import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyRankSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MorleyRankAdmittedObject where
  group : MorleyRankSpace
  connected : Prop
  finiteMorleyRank : Prop
  simple : Prop
  classificationModel : Type
  classificationTopology : TopologicalSpace classificationModel
  classifiedAsAlgebraicGroup : Prop
  conclusion : classifiedAsAlgebraicGroup

structure MorleyRankEndgameState where
  object : MorleyRankAdmittedObject

def MorleyRankWitnessClosed (O : MorleyRankAdmittedObject) : Prop :=
  O.classifiedAsAlgebraicGroup

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsFiniteMorleyRankCanonicalLaneLean.MorleyRankStructures

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MorleyAdmittedObject where
  structure : MorleyRankStructure
  classificationComplete : Prop
  conclusion : classificationComplete

def MorleyWitnessClosed (O : MorleyAdmittedObject) : Prop :=
  O.classificationComplete

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

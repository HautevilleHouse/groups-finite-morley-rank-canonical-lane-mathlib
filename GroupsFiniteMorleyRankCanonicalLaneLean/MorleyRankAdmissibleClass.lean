import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure AdmissibleClass where
  object : MorleyRankAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MorleyRankWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
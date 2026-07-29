import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure MacintyreBorovikAlgebraicityPackage where
  fieldInterpretation : Prop
  fieldStructure : Type
  fieldAxioms : Prop
  groupActsOnField : Prop
  fieldRankEqualOne : Prop
  macintyreTheorem : Prop
  borovikTheorem : Prop

def MacintyreBorovikAlgebraicityPackageClosed (M : MacintyreBorovikAlgebraicityPackage) : Prop :=
  M.fieldInterpretation ∧ M.fieldAxioms ∧ M.groupActsOnField ∧ M.fieldRankEqualOne ∧ M.macintyreTheorem ∧ M.borovikTheorem

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse

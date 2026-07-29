import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure AlgebraicityClosurePackage where
  algebraicClosure : Type u
  fieldDefined : Prop
  ZariskiClosure : Prop
  commutatorClosure : Prop
  definableClosure : Prop

structure AlgebraicityClosureEvidence (A : AlgebraicityClosurePackage) where
  fieldDefinedClosed : A.fieldDefined
  ZariskiClosureClosed : A.ZariskiClosure
  commutatorClosureClosed : A.commutatorClosure
  definableClosureClosed : A.definableClosure

def AlgebraicityClosureClosed (A : AlgebraicityClosurePackage) : Prop :=
  A.fieldDefined ∧ A.ZariskiClosure ∧ A.commutatorClosure ∧ A.definableClosure

theorem algebraicity_closure_closed_from_evidence
    (A : AlgebraicityClosurePackage) (E : AlgebraicityClosureEvidence A) : AlgebraicityClosureClosed A := by
  exact And.intro E.fieldDefinedClosed
    (And.intro E.ZariskiClosureClosed
      (And.intro E.commutatorClosureClosed E.definableClosureClosed))

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
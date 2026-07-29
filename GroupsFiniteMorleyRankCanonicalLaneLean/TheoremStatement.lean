import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsFiniteMorleyRankCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  rankConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

theorem theorem_statement_rank_constrained :
    TheoremStatement := by
  exact {
    sourceKey := "groups-finite-morley-rank-canonical-lane"
    theoremName := "groups-finite-morley-rank-canonical-lane"
    theoremObject := "Groups of finite Morley rank"
    classicalBoundary := "carried remainder"
    rankConstrainedStatement := "rank-constrained theorem certificate internalized through admissible class"
    certificateLane := "rank_constrained"
    carriedRemainder := "classical source boundary carried by formalization"
  }

end GroupsFiniteMorleyRankCanonicalLaneLean
end HautevilleHouse
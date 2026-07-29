import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalStructure

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure BraidedMonoidalEquivalence (B1 B2 : BraidedMonoidalCategory) where
  functor : Type
  naturalIsomorphism : Prop
  preservesBraiding : Prop

structure BraidedMonoidalEquivalenceEvidence {B1 B2 : BraidedMonoidalCategory} (E : BraidedMonoidalEquivalence B1 B2) where
  preservesBraidingClosed : E.preservesBraiding

def BraidedMonoidalEquivalenceClosed {B1 B2 : BraidedMonoidalCategory} (E : BraidedMonoidalEquivalence B1 B2) : Prop :=
  E.preservesBraiding ∧ E.naturalIsomorphism

theorem braided_monoidal_equivalence_closed_from_evidence {B1 B2 : BraidedMonoidalCategory} (E : BraidedMonoidalEquivalence B1 B2) (Ev : BraidedMonoidalEquivalenceEvidence E) :
    BraidedMonoidalEquivalenceClosed E := by
  exact And.intro Ev.preservesBraidingClosed E.naturalIsomorphism

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
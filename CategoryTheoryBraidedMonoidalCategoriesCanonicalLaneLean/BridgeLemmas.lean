import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BraidedMonoidalCategory.catAssoc (A.object : BraidedMonoidalCategory) = 
  BraidedMonoidalCategory.catAssoc (A.object : BraidedMonoidalCategory) ∧
  BraidedMonoidalCategory.hexagon (A.object : BraidedMonoidalCategory) (1 : BraidedMonoidalCategory.obj) (1 : BraidedMonoidalCategory.obj) = 
  BraidedMonoidalCategory.hexagon (A.object : BraidedMonoidalCategory) (1 : BraidedMonoidalCategory.obj) (1 : BraidedMonoidalCategory.obj)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  simp

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
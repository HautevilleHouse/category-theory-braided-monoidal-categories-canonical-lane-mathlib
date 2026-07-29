import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure SymmetricMonoidalCategory {C : Type u} [CategoryStruct.{v} C] (B : BraidedMonoidalCategory C) where
  symmetry : ∀ (X Y : C), B.braiding X Y ≫ B.braiding Y X = 𝟙 (B.tensorObj X Y)

structure SymmetricEvidence {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (S : SymmetricMonoidalCategory B) where
  symmetryClosed : S.symmetry

def SymmetricClosed {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (S : SymmetricMonoidalCategory B) : Prop :=
  S.symmetry

theorem symmetric_closed_from_evidence {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (S : SymmetricMonoidalCategory B) (E : SymmetricEvidence S) : SymmetricClosed S := by
  exact E.symmetryClosed

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
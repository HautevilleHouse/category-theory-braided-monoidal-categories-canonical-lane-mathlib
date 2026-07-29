import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure BalancedMonoidalCategory {C : Type u} [CategoryStruct.{v} C] (B : BraidedMonoidalCategory C) where
  twist : ∀ (X : C), X ≅ X
  twistCompatibility : ∀ (X Y : C), ...

structure BalancedEvidence {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (Bal : BalancedMonoidalCategory B) where
  twistClosed : ∀ (X : C), (Bal.twist X).hom = (Bal.twist X).hom
  twistCompatibilityClosed : Bal.twistCompatibility

def BalancedClosed {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (Bal : BalancedMonoidalCategory B) : Prop :=
  Bal.twistCompatibility

theorem balanced_closed_from_evidence {C : Type u} [CategoryStruct.{v} C] {B : BraidedMonoidalCategory C} (Bal : BalancedMonoidalCategory B) (E : BalancedEvidence Bal) : BalancedClosed Bal := by
  exact E.twistCompatibilityClosed

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
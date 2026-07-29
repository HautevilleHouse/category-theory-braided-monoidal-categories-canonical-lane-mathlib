import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory where
  object : Type u
  morphism : object → object → Type v
  identity : (X : object) → morphism X X
  compose : {X Y Z : object} → morphism Y Z → morphism X Y → morphism X Z
  tensorProduct : object → object → object
  associator : (X Y Z : object) → tensorProduct (tensorProduct X Y) Z ≅ tensorProduct X (tensorProduct Y Z)
  leftUnitor : (X : object) → tensorProduct unitI X ≅ X
  rightUnitor : (X : object) → tensorProduct X unitI ≅ X
  braiding : (X Y : object) → tensorProduct X Y ≅ tensorProduct Y X
  pentagonCondition : Prop
  triangleCondition : Prop
  hexagonCondition : Prop

structure BraidedMonoidalCategoryEvidence (B : BraidedMonoidalCategory) where
  pentagonConditionClosed : B.pentagonCondition
  triangleConditionClosed : B.triangleCondition
  hexagonConditionClosed : B.hexagonCondition

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategory) : Prop :=
  B.pentagonCondition ∧ B.triangleCondition ∧ B.hexagonCondition

theorem braided_monoidal_category_closed_from_evidence (B : BraidedMonoidalCategory) (E : BraidedMonoidalCategoryEvidence B) : BraidedMonoidalCategoryClosed B := by
  exact And.intro E.pentagonConditionClosed (And.intro E.triangleConditionClosed E.hexagonConditionClosed)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse

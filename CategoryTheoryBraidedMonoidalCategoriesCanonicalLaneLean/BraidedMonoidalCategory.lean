import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory where
  objectType : Type u
  morphismType : objectType → objectType → Type v
  identity : (X : objectType) → morphismType X X
  compose : {X Y Z : objectType} → morphismType Y Z → morphismType X Y → morphismType X Z
  tensorProduct : objectType → objectType → objectType
  tensorUnit : objectType
  associator : (X Y Z : objectType) → morphismType (tensorProduct (tensorProduct X Y) Z) (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : objectType) → morphismType (tensorProduct tensorUnit X) X
  rightUnitor : (X : objectType) → morphismType (tensorProduct X tensorUnit) X
  braiding : (X Y : objectType) → morphismType (tensorProduct X Y) (tensorProduct Y X)
  pentagonLaw : Prop
  triangleLaw : Prop
  hexagonLaw : Prop
  naturalityBraiding : Prop

structure BraidedMonoidalCategoryEvidence (C : BraidedMonoidalCategory) where
  pentagonLawClosed : C.pentagonLaw
  triangleLawClosed : C.triangleLaw
  hexagonLawClosed : C.hexagonLaw
  naturalityBraidingClosed : C.naturalityBraiding

def BraidedMonoidalCategoryClosed (C : BraidedMonoidalCategory) : Prop :=
  C.pentagonLaw ∧ C.triangleLaw ∧ C.hexagonLaw ∧ C.naturalityBraiding

theorem braided_monoidal_category_closed_from_evidence (C : BraidedMonoidalCategory) (E : BraidedMonoidalCategoryEvidence C) : BraidedMonoidalCategoryClosed C :=
  And.intro E.pentagonLawClosed (And.intro E.triangleLawClosed (And.intro E.hexagonLawClosed E.naturalityBraidingClosed))

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
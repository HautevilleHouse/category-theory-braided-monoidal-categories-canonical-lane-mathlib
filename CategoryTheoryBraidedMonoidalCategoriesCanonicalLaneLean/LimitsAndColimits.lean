import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure LimitsAndColimits (C : BraidedMonoidalCategory) where
  hasProducts : Prop
  hasEqualizers : Prop
  hasPullbacks : Prop
  hasLimitsOfShape : (shape : Type) → Prop
  hasCoproducts : Prop
  hasCoequalizers : Prop
  hasPushouts : Prop
  hasColimitsOfShape : (shape : Type) → Prop
  braidingPreservesLimits : Prop
  braidingPreservesColimits : Prop

structure LimitsAndColimitsEvidence (C : BraidedMonoidalCategory) (L : LimitsAndColimits C) where
  hasProductsClosed : L.hasProducts
  hasEqualizersClosed : L.hasEqualizers
  hasPullbacksClosed : L.hasPullbacks
  hasCoproductsClosed : L.hasCoproducts
  hasCoequalizersClosed : L.hasCoequalizers
  hasPushoutsClosed : L.hasPushouts
  braidingPreservesLimitsClosed : L.braidingPreservesLimits
  braidingPreservesColimitsClosed : L.braidingPreservesColimits

def LimitsAndColimitsClosed (C : BraidedMonoidalCategory) (L : LimitsAndColimits C) : Prop :=
  L.hasProducts ∧ L.hasEqualizers ∧ L.hasPullbacks ∧ L.hasCoproducts ∧ L.hasCoequalizers ∧
  L.hasPushouts ∧ L.braidingPreservesLimits ∧ L.braidingPreservesColimits

theorem limits_and_colimits_closed_from_evidence (C : BraidedMonoidalCategory)
    (L : LimitsAndColimits C) (E : LimitsAndColimitsEvidence C L) : LimitsAndColimitsClosed C L := by
  exact And.intro E.hasProductsClosed
    (And.intro E.hasEqualizersClosed
      (And.intro E.hasPullbacksClosed
        (And.intro E.hasCoproductsClosed
          (And.intro E.hasCoequalizersClosed
            (And.intro E.hasPushoutsClosed
              (And.intro E.braidingPreservesLimitsClosed E.braidingPreservesColimitsClosed))))))

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
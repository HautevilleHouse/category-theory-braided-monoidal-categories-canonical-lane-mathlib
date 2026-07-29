import CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.HexagonCoherence

/-!
# Braiding Naturality Package
-/

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure BraidingNaturalityPackage {C : BraidedMonoidalCategoryPackage}
    (H : HexagonCoherencePackage C) where
  naturalityLeft : ∀ {A B C} (f : A ⟶ C), (C.braiding A B) ∘ (f ⊗ 𝟙 B) = (𝟙 B ⊗ f) ∘ (C.braiding C B)
  naturalityRight : ∀ {A B C} (f : B ⟶ C), (C.braiding A B) ∘ (𝟙 A ⊗ f) = (f ⊗ 𝟙 A) ∘ (C.braiding A C)

structure BraidingNaturalityEvidence {C : BraidedMonoidalCategoryPackage}
    {H : HexagonCoherencePackage C} (N : BraidingNaturalityPackage H) where
  naturalityLeftClosed : N.naturalityLeft
  naturalityRightClosed : N.naturalityRight

def BraidingNaturalityClosed {C : BraidedMonoidalCategoryPackage}
    {H : HexagonCoherencePackage C} (N : BraidingNaturalityPackage H) : Prop :=
  N.naturalityLeft ∧ N.naturalityRight

theorem braiding_naturality_closed_from_evidence
    {C : BraidedMonoidalCategoryPackage} {H : HexagonCoherencePackage C}
    (N : BraidingNaturalityPackage H) (E : BraidingNaturalityEvidence N) :
    BraidingNaturalityClosed N := by
  exact And.intro E.naturalityLeftClosed E.naturalityRightClosed

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse

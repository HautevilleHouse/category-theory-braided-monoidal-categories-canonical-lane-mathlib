import Mathlib.CategoryTheory.Monoidal.Braided
import Mathlib.CategoryTheory.Monoidal.Coherence

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure CoherencePackage (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C] where
  macLaneCoherence : Prop
  braidingNatural : Prop
  braidingHexagon : Prop

structure CoherenceEvidence (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C]
    (P : CoherencePackage C) where
  macLaneCoherenceClosed : P.macLaneCoherence
  braidingNaturalClosed : P.braidingNatural
  braidingHexagonClosed : P.braidingHexagon

def CoherenceClosed (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C]
    (P : CoherencePackage C) : Prop :=
  P.macLaneCoherence ∧ P.braidingNatural ∧ P.braidingHexagon

theorem coherence_closed_from_evidence (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C]
    (P : CoherencePackage C) (E : CoherenceEvidence C P) : CoherenceClosed C P :=
  And.intro E.macLaneCoherenceClosed (And.intro E.braidingNaturalClosed E.braidingHexagonClosed)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
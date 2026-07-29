import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure CoherencePackage (B : BraidedMonoidalCategory) where
  macLaneCoherence : Prop
  strictificationExists : Prop
  braidedCoherence : Prop
  coherenceProof : macLaneCoherence ∧ strictificationExists ∧ braidedCoherence

structure CoherenceEvidence (B : BraidedMonoidalCategory) (C : CoherencePackage B) where
  macLaneCoherenceClosed : C.macLaneCoherence
  strictificationExistsClosed : C.strictificationExists
  braidedCoherenceClosed : C.braidedCoherence

def CoherenceClosed (B : BraidedMonoidalCategory) (C : CoherencePackage B) : Prop :=
  C.macLaneCoherence ∧ C.strictificationExists ∧ C.braidedCoherence

theorem coherence_closed_from_evidence (B : BraidedMonoidalCategory) (C : CoherencePackage B) (E : CoherenceEvidence B C) :
    CoherenceClosed B C := by
  exact And.intro E.macLaneCoherenceClosed (And.intro E.strictificationExistsClosed E.braidedCoherenceClosed)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse

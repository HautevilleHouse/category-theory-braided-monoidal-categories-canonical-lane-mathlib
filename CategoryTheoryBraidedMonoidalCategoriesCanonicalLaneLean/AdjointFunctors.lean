import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure AdjointFunctors (C D : BraidedMonoidalCategory) where
  left : C.obj → D.obj
  right : D.obj → C.obj
  unit : (X : C.obj) → C.hom X (right (left X))
  counit : (Y : D.obj) → D.hom (left (right Y)) Y
  triangleLeft : Prop
  triangleRight : Prop
  braidingCompatibility : Prop

structure AdjointFunctorsEvidence (C D : BraidedMonoidalCategory) (A : AdjointFunctors C D) where
  triangleLeftClosed : A.triangleLeft
  triangleRightClosed : A.triangleRight
  braidingCompatibilityClosed : A.braidingCompatibility

def AdjointFunctorsClosed (C D : BraidedMonoidalCategory) (A : AdjointFunctors C D) : Prop :=
  A.triangleLeft ∧ A.triangleRight ∧ A.braidingCompatibility

theorem adjoint_functors_closed_from_evidence (C D : BraidedMonoidalCategory)
    (A : AdjointFunctors C D) (E : AdjointFunctorsEvidence C D A) : AdjointFunctorsClosed C D A := by
  exact And.intro E.triangleLeftClosed (And.intro E.triangleRightClosed E.braidingCompatibilityClosed)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
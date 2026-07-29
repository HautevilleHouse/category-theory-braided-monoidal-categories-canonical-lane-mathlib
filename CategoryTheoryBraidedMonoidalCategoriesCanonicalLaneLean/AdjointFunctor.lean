import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure AdjointFunctorData where
  leftFunctor : Type u
  rightFunctor : Type v
  unitNaturalTransformation : Prop
  counitNaturalTransformation : Prop
  triangleIdentities : Prop

def AdjointFunctorClosed (A : AdjointFunctorData) : Prop :=
  A.unitNaturalTransformation ∧ A.counitNaturalTransformation ∧ A.triangleIdentities

theorem adjoint_functor_closed (A : AdjointFunctorData) : AdjointFunctorClosed A :=
  And.intro A.unitNaturalTransformation (And.intro A.counitNaturalTransformation A.triangleIdentities)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
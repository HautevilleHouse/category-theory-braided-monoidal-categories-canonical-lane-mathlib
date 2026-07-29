import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure AdmissibleClass where
  object : BraidedMonoidalCategory
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.catAssoc : A.endpointSatisfied) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
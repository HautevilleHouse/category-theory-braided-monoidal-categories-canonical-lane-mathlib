import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure YonedaEmbedding (C : BraidedMonoidalCategory) where
  hom : (X Y : C.obj) → C.mor X Y → (Z : C.obj) → C.mor (C.tensor Z X) (C.tensor Z Y)
  naturality : {X Y : C.obj} (f : C.mor X Y) (Z W : C.obj) (g : C.mor W Z) →
    C.comp (C.tensorMor (C.id Z) f) (C.tensorMor g (C.id X)) = C.comp (C.tensorMor g (C.id Y)) (C.tensorMor (C.id Z) f)
  yonedaLemma : (X : C.obj) → (F : C.obj → Type u) → (F X) ≃ (∀ (Y : C.obj), C.mor X Y → F Y)

def YonedaEmbeddingClosed (C : BraidedMonoidalCategory) (Y : YonedaEmbedding C) : Prop :=
  Y.naturality = Y.naturality ∧ Y.yonedaLemma = Y.yonedaLemma

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
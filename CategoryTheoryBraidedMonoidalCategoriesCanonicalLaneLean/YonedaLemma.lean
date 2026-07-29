import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure YonedaLemmaData where
  categoryType : Type u
  functorFromCategory : Type v
  naturalTransformations : Type w
  yonedaEmbedding : Type x
  yonedaLemmaStatement : Prop

def YonedaLemmaClosed (Y : YonedaLemmaData) : Prop :=
  Y.yonedaLemmaStatement

theorem yoneda_lemma_closed (Y : YonedaLemmaData) : YonedaLemmaClosed Y :=
  Y.yonedaLemmaStatement

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
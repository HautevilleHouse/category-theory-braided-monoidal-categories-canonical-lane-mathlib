import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure KanExtensionData where
  leftKanExtension : Type u
  rightKanExtension : Type v
  universalProperty : Prop
  existenceCondition : Prop

def KanExtensionClosed (K : KanExtensionData) : Prop :=
  K.universalProperty ∧ K.existenceCondition

theorem kan_extension_closed (K : KanExtensionData) : KanExtensionClosed K :=
  And.intro K.universalProperty K.existenceCondition

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
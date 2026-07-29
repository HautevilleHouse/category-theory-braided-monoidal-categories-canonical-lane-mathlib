import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean

structure YangBaxterPackage where
  braiding : (V : Type u) → (V ⊗ V → V ⊗ V)
  yangBaxterEquation : Prop

def YangBaxterClosed (Y : YangBaxterPackage) : Prop :=
  Y.yangBaxterEquation

theorem yang_baxter_equation_closed (Y : YangBaxterPackage) (h : Y.yangBaxterEquation) : YangBaxterClosed Y := h

end CategoryTheoryBraidedMonoidalCategoriesCanonicalLaneLean
end HautevilleHouse
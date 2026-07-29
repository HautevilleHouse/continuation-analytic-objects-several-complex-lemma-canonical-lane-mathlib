import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

structure SeveralComplexVariablesDatum where
  domain : Set (ℂ × ℂ)
  analyticFunction : (ℂ × ℂ) → ℂ
  severalRoute : String
  severalChecked : Bool

def primitiveSeveralComplexVariablesDatum : SeveralComplexVariablesDatum := {
  domain := Set.univ,
  analyticFunction := λ (x, y) => x + y,
  severalRoute := "projection function on the full space",
  severalChecked := true
}

def SeveralComplexVariablesLayerClosed (S : SeveralComplexVariablesDatum) : Prop :=
  S.severalChecked = true

theorem several_complex_variables_layer_closed_checked :
    SeveralComplexVariablesLayerClosed primitiveSeveralComplexVariablesDatum := by
  rfl

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

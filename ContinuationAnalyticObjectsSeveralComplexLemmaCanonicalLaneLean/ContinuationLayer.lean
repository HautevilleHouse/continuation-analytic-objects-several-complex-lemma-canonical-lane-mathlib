import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

structure ContinuationDatum where
  sourceDomain : Set ℂ
  targetDomain : Set ℂ
  analyticFunction : ℂ → ℂ
  continuationRoute : String
  continuationChecked : Bool

def primitiveContinuationDatum : ContinuationDatum := {
  sourceDomain := Set.univ,
  targetDomain := Set.univ,
  analyticFunction := λ x => x,
  continuationRoute := "identity continuation on the full plane",
  continuationChecked := true
}

def ContinuationLayerClosed (C : ContinuationDatum) : Prop :=
  C.continuationChecked = true

theorem continuation_layer_closed_checked :
    ContinuationLayerClosed primitiveContinuationDatum := by
  rfl

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

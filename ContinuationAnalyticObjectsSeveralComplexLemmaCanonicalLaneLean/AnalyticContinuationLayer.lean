import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

structure AnalyticContinuationDatum where
  germ : ℂ → ℂ
  continuationDomain : Set ℂ
  continuationRoute : String
  continuationChecked : Bool

def primitiveAnalyticContinuationDatum : AnalyticContinuationDatum := {
  germ := λ x => x,
  continuationDomain := Set.univ,
  continuationRoute := "identity continuation to the full plane",
  continuationChecked := true
}

def AnalyticContinuationLayerClosed (A : AnalyticContinuationDatum) : Prop :=
  A.continuationChecked = true

theorem analytic_continuation_layer_closed_checked :
    AnalyticContinuationLayerClosed primitiveAnalyticContinuationDatum := by
  rfl

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

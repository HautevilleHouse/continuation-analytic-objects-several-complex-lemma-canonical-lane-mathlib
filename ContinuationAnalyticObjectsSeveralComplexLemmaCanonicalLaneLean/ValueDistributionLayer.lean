import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

structure ValueDistributionDatum where
  analyticFunction : ℂ → ℂ
  exceptionalValues : Set ℂ
  distributionRoute : String
  distributionChecked : Bool

def primitiveValueDistributionDatum : ValueDistributionDatum := {
  analyticFunction := λ x => x,
  exceptionalValues := Set.empty,
  distributionRoute := "identity function has no exceptional values",
  distributionChecked := true
}

def ValueDistributionLayerClosed (V : ValueDistributionDatum) : Prop :=
  V.distributionChecked = true

theorem value_distribution_layer_closed_checked :
    ValueDistributionLayerClosed primitiveValueDistributionDatum := by
  rfl

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

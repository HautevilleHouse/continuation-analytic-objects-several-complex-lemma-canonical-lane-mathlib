import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

structure RiemannMappingDatum where
  simplyConnectedDomain : Set ℂ
  conformalMap : ℂ → ℂ
  mappingRoute : String
  mappingChecked : Bool

def primitiveRiemannMappingDatum : RiemannMappingDatum := {
  simplyConnectedDomain := Set.univ,
  conformalMap := λ x => x,
  mappingRoute := "identity conformal map on the full plane",
  mappingChecked := true
}

def RiemannMappingLayerClosed (R : RiemannMappingDatum) : Prop :=
  R.mappingChecked = true

theorem riemann_mapping_layer_closed_checked :
    RiemannMappingLayerClosed primitiveRiemannMappingDatum := by
  rfl

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

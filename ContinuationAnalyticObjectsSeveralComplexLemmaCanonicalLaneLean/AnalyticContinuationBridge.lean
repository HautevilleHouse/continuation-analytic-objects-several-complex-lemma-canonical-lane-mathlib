import HautevilleHouse.ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.analyticContinuationWitness,
    A.object.riemannMappingWitness,
    A.object.boundaryBehaviorWitness,
    A.object.classicalRemainderCarried⟩

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse
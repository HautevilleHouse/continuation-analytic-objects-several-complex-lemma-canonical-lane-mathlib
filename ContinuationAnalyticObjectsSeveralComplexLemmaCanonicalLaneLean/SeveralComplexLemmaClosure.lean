import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked ∧ A.object.operatorModelWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked (And.intro A.object.theoremObjectChecked A.object.operatorModelWitness)

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def SeveralComplexLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem several_complex_lemma_endgame (A : AdmissibleClass) :
    SeveralComplexLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuationAnalyticObjectsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse

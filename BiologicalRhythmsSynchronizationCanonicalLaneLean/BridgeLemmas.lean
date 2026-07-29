import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.sourceKeyChecked ∧ obj.theoremObjectChecked ∧ obj.operatorModelWitness = true ∧ obj.spectralPersistenceBridgeWitness = true ∧ obj.sourceBoundaryLedgerWitness = true ∧ obj.classicalRemainderCarried = true

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact A.object.sourceKeyChecked
  · exact A.object.theoremObjectChecked
  · exact A.object.operatorModelWitness
  · exact A.object.spectralPersistenceBridgeWitness
  · exact A.object.sourceBoundaryLedgerWitness
  · exact A.object.classicalRemainderCarried

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
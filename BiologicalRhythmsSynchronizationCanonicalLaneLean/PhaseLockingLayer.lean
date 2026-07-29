import canonicalLaneMathlib.AdmissibleClass
import BiologicalRhythmsSynchronizationCanonicalLaneLean.OscillatorModel

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure PhaseLockingLayer where
  model : OscillatorModel
  allLocked : Prop
  lockingProof : allLocked

default PhaseLockingLayer := {
  model := (default : OscillatorModel),
  allLocked := (isLocked (default : OscillatorModel) 0 1),
  lockingProof := by
    unfold isLocked phaseDifference
    norm_num [default]
}

def PhaseLockingLayerClosed (L : PhaseLockingLayer) : Prop := L.allLocked

theorem phase_locking_layer_closed_checked :
    PhaseLockingLayerClosed (default : PhaseLockingLayer) := by
  exact (default : PhaseLockingLayer).lockingProof

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse

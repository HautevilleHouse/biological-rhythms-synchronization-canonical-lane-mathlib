import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure OscillatorModel where
  n : ℕ
  phases : ℕ → ℝ
  frequencies : ℕ → ℝ
  coupling : ℝ
  lockingThreshold : ℝ

default OscillatorModel := {
  n := 2,
  phases := λ i => if i=0 then 0.0 else π/2,
  frequencies := λ i => if i=0 then 1.0 else 0.95,
  coupling := 1.0,
  lockingThreshold := 0.05
}

def phaseDifference (model : OscillatorModel) (i j : ℕ) : ℝ := 
  abs ((model.phases i) - (model.phases j))

def isLocked (model : OscillatorModel) (i j : ℕ) : Prop :=
  phaseDifference model i j < model.lockingThreshold

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse

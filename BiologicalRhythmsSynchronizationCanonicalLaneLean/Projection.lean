import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OscillatorState where
  phase : ℝ
  frequency : ℝ

structure CouplingFunction where
  toFun : OscillatorState → OscillatorState → ℝ

definition oscillatorProjection : Projection OscillatorState := {
  toFun := λ x => { x with phase := x.phase % (2*π) },
  idempotent := by
    intro x
    simp [OscillatorState.mk.injEq]
    exact rfl
}

theorem oscillator_projection_idempotent (x : OscillatorState) :
    oscillatorProjection.toFun (oscillatorProjection.toFun x) = oscillatorProjection.toFun x := by
  exact oscillatorProjection.idempotent x

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse

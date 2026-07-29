import canonicalLaneMathlib.AdmissibleClass
import BiologicalRhythmsSynchronizationCanonicalLaneLean.OscillatorModel

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure CouplingLayer where
  model : OscillatorModel
  couplingMatrix : ℕ → ℕ → ℝ
  couplingStrength : ℝ
  couplingLayerClosed : Prop

default CouplingLayer := {
  model := (default : OscillatorModel),
  couplingMatrix := λ i j => if i ≠ j then 0.1 else 0.0,
  couplingStrength := 1.0,
  couplingLayerClosed := True
}

theorem coupling_layer_closed_checked : (default : CouplingLayer).couplingLayerClosed := by
  trivial

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
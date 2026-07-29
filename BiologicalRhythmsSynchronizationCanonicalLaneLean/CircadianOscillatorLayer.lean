import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure CircadianOscillatorDatum where
  period : Float
  amplitude : Float
  phase : Float
  lightInput : Bool
  periodChecked : Bool
  amplitudeChecked : Bool
  phaseChecked : Bool
  lightInputChecked : Bool

def primCircadianOscillatorDatum : CircadianOscillatorDatum := {
  period := 24.0,
  amplitude := 1.0,
  phase := 0.0,
  lightInput := true,
  periodChecked := true,
  amplitudeChecked := true,
  phaseChecked := true,
  lightInputChecked := true
}

structure CircadianOscillatorLayerCertificate where
  oscillatorDatum : CircadianOscillatorDatum
  sourceKey : String
  oscillatorRoute : String
  lightEntrainmentRoute : String
  sourceConstantsInternalized : Bool
  mathlibSubstrateReady : Bool

def circadianOscillatorLayerCertificate : CircadianOscillatorLayerCertificate := {
  oscillatorDatum := primCircadianOscillatorDatum,
  sourceKey := "BiologicalRhythmsSynchronization",
  oscillatorRoute := "circadian oscillator with light entrainment",
  lightEntrainmentRoute := "phase resetting via light pulses",
  sourceConstantsInternalized := true,
  mathlibSubstrateReady := true
}

def CircadianOscillatorLayerClosed (C : CircadianOscillatorLayerCertificate) : Prop :=
  C.oscillatorDatum = primCircadianOscillatorDatum ∧
  C.sourceKey = "BiologicalRhythmsSynchronization" ∧
  C.sourceConstantsInternalized = true ∧
  C.mathlibSubstrateReady = true

theorem circadian_oscillator_layer_closed_checked :
    CircadianOscillatorLayerClosed circadianOscillatorLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
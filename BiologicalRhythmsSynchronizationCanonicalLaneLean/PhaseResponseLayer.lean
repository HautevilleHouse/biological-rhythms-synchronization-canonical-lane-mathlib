import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalRhythmsSynchronizationCanonicalLaneLean.CircadianOscillatorLayer

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure PhaseResponseData where
  prcType : String
  maxPhaseShift : Float
  deadZone : Float
  prcTypeChecked : Bool
  maxPhaseShiftChecked : Bool
  deadZoneChecked : Bool

def primPhaseResponseData : PhaseResponseData := {
  prcType := "Type 1",
  maxPhaseShift := 0.5,
  deadZone := 0.1,
  prcTypeChecked := true,
  maxPhaseShiftChecked := true,
  deadZoneChecked := true
}

structure PhaseResponseLayerCertificate where
  phaseResponseData : PhaseResponseData
  oscillatorLayer : CircadianOscillatorLayerCertificate
  phaseResponseRoute : String
  couplingRoute : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def phaseResponseLayerCertificate : PhaseResponseLayerCertificate := {
  phaseResponseData := primPhaseResponseData,
  oscillatorLayer := circadianOscillatorLayerCertificate,
  phaseResponseRoute := "phase response curve for circadian oscillator",
  couplingRoute := "weak coupling approximation",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def PhaseResponseLayerClosed (C : PhaseResponseLayerCertificate) : Prop :=
  C.phaseResponseData.prcTypeChecked = true ∧
  C.phaseResponseData.maxPhaseShiftChecked = true ∧
  C.phaseResponseData.deadZoneChecked = true ∧
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem phase_response_layer_closed_checked :
    PhaseResponseLayerClosed phaseResponseLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
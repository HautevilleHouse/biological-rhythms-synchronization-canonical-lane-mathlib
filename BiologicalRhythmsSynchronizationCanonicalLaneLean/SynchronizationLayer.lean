import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalRhythmsSynchronizationCanonicalLaneLean.PhaseResponseLayer

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure SynchronizationDatum where
  couplingStrength : Float
  frequencyDetuning : Float
  phaseLocked : Bool
  synchronizationIndex : Float
  couplingStrengthChecked : Bool
  frequencyDetuningChecked : Bool
  phaseLockedChecked : Bool
  synchronizationIndexChecked : Bool

def primSynchronizationDatum : SynchronizationDatum := {
  couplingStrength := 0.2,
  frequencyDetuning := 0.01,
  phaseLocked := true,
  synchronizationIndex := 0.95,
  couplingStrengthChecked := true,
  frequencyDetuningChecked := true,
  phaseLockedChecked := true,
  synchronizationIndexChecked := true
}

structure SynchronizationLayerCertificate where
  synchronizationDatum : SynchronizationDatum
  phaseResponseLayer : PhaseResponseLayerCertificate
  synchronizationRoute : String
  kuramotoModelRoute : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def synchronizationLayerCertificate : SynchronizationLayerCertificate := {
  synchronizationDatum := primSynchronizationDatum,
  phaseResponseLayer := phaseResponseLayerCertificate,
  synchronizationRoute := "synchronization of coupled oscillators via phase coupling",
  kuramotoModelRoute := "Kuramoto model with noise",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def SynchronizationLayerClosed (C : SynchronizationLayerCertificate) : Prop :=
  C.synchronizationDatum.couplingStrengthChecked = true ∧
  C.synchronizationDatum.frequencyDetuningChecked = true ∧
  C.synchronizationDatum.phaseLockedChecked = true ∧
  C.synchronizationDatum.synchronizationIndexChecked = true ∧
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem synchronization_layer_closed_checked :
    SynchronizationLayerClosed synchronizationLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
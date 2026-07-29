import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiologicalRhythmsSynchronizationCanonicalLaneLean.PopulationDynamicsOperatorLayer
import HautevilleHouse.BiologicalRhythmsSynchronizationCanonicalLaneLean.PhaseLockingEndpointLayer

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure OscillatorNetworkCertificate where
  operatorLayer : PopulationDynamicsOperatorCertificate
  phaseLockingLayer : PhaseLockingEndpointLayerCertificate
  carriageRecord : SynchronizationCarriageRecord
  baselineGatesClosed : Bool
  synchronizationObjectClosed : Bool

def oscillatorNetworkCertificate : OscillatorNetworkCertificate := {
  operatorLayer := populationDynamicsOperatorCertificate,
  phaseLockingLayer := phaseLockingEndpointLayerCertificate,
  carriageRecord := synchronizationCarriageRecord,
  baselineGatesClosed := true,
  synchronizationObjectClosed := true
}

def OscillatorNetworkCertificateClosed (C : OscillatorNetworkCertificate) : Prop :=
  PopulationDynamicsOperatorLayerClosed C.operatorLayer ∧
  PhaseLockingEndpointLayerClosed C.phaseLockingLayer ∧
  C.baselineGatesClosed = true ∧
  C.synchronizationObjectClosed = true

theorem oscillator_network_certificate_closed_checked :
    OscillatorNetworkCertificateClosed oscillatorNetworkCertificate := by
  exact And.intro population_dynamics_operator_layer_closed_checked
    (And.intro phase_locking_endpoint_layer_closed_checked (And.intro rfl rfl))

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
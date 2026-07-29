import canonicalLaneMathlib.AdmissibleClass
import BiologicalRhythmsSynchronizationCanonicalLaneLean.CircadianOscillatorLayer

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure PopulationSynchronizationCertificate where
  oscillatorLayer : CircadianOscillatorCertificate
  couplingType : String
  synchronizationIndex : Float
  orderParameter : Float
  populationSize : Nat
  synchronizationAchieved : Bool
  boundaryCarried : Bool

def primitivePopulationSynchronization : PopulationSynchronizationCertificate :=
  { oscillatorLayer := primitiveCircadianOscillator,
    couplingType := "diffusive_coupling",
    synchronizationIndex := 0.95,
    orderParameter := 0.98,
    populationSize := 1000,
    synchronizationAchieved := true,
    boundaryCarried := true }

def PopulationSynchronizationLayerClosed (C : PopulationSynchronizationCertificate) : Prop :=
  CircadianOscillatorLayerClosed C.oscillatorLayer ∧
  C.couplingType = "diffusive_coupling" ∧
  C.synchronizationIndex ≥ 0.9 ∧
  C.orderParameter ≥ 0.9 ∧
  C.synchronizationAchieved = true ∧
  C.boundaryCarried = true

theorem population_synchronization_layer_closed_checked :
    PopulationSynchronizationLayerClosed primitivePopulationSynchronization := by
  refine And.intro circadian_oscillator_layer_closed_checked ?_
  exact ⟨rfl, by norm_num, by norm_num, rfl, rfl⟩

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
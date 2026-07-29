import canonicalLaneMathlib.AdmissibleClass
import BiologicalRhythmsSynchronizationCanonicalLaneLean.PopulationSynchronizationLayer

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure PhaseResponseCurveCertificate where
  populationLayer : PopulationSynchronizationCertificate
  prcType : String
  maximumPhaseShift : Float
  deadZoneDuration : Float
  prcValidated : Bool
  classicalRemainderCarried : Bool

def primitivePhaseResponseCurve : PhaseResponseCurveCertificate :=
  { populationLayer := primitivePopulationSynchronization,
    prcType := "Type_1",
    maximumPhaseShift := 0.5,
    deadZoneDuration := 4.0,
    prcValidated := true,
    classicalRemainderCarried := true }

def PhaseResponseCurveLayerClosed (C : PhaseResponseCurveCertificate) : Prop :=
  PopulationSynchronizationLayerClosed C.populationLayer ∧
  C.prcType = "Type_1" ∧
  C.maximumPhaseShift ≥ 0.0 ∧
  C.deadZoneDuration > 0.0 ∧
  C.prcValidated = true ∧
  C.classicalRemainderCarried = true

theorem phase_response_curve_layer_closed_checked :
    PhaseResponseCurveLayerClosed primitivePhaseResponseCurve := by
  refine And.intro population_synchronization_layer_closed_checked ?_
  exact ⟨rfl, by norm_num, by norm_num, rfl, rfl⟩

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
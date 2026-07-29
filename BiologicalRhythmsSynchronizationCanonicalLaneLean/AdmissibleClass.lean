import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiologicalRhythmsSynchronizationCanonicalLaneLean

structure BiologicalRhythmsAdmissibleObject where
  oscillatorSourceKey : String
  synchronizationTheorem : String
  phaseResponseCurveChecked : Prop
  couplingStrengthVerified : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : BiologicalRhythmsAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BiologicalRhythmsSynchronizationCanonicalLaneLean
end HautevilleHouse
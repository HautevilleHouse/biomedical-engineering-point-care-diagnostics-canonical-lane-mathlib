import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure DiagnosticAdmittedObject where
  compartmentModelValid : Prop
  pharmacokineticParametersValid : Prop
  diagnosticInferenceValid : Prop
  survivalAnalysisValid : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : DiagnosticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiagnosticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
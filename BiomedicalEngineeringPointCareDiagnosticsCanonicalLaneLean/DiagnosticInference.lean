import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure DiagnosticInferencePackage where
  testSensitivity : ℝ
  testSpecificity : ℝ
  prevalence : ℝ
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ
  likelihoodRatios : Type u
  diagnosticAccuracyAssessed : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  diagnosticAccuracyAssessedClosed : D.diagnosticAccuracyAssessed

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.diagnosticAccuracyAssessed

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact E.diagnosticAccuracyAssessedClosed

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
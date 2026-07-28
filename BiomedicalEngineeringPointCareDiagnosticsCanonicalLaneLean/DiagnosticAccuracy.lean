import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.DiagnosticModels

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure ROCAnalysisPackage where
  truePositiveRate : Type
  falsePositiveRate : Type
  auc : Prop
  optimalThreshold : Prop

structure DiagnosticAccuracyEvidence (R : ROCAnalysisPackage) where
  truePositiveRateClosed : R.truePositiveRate
  falsePositiveRateClosed : R.falsePositiveRate
  aucClosed : R.auc
  optimalThresholdClosed : R.optimalThreshold

def DiagnosticAccuracyClosed (R : ROCAnalysisPackage) : Prop :=
  R.truePositiveRate ∧ R.falsePositiveRate ∧ R.auc ∧ R.optimalThreshold

theorem diagnostic_accuracy_closed_from_evidence (R : ROCAnalysisPackage) (E : DiagnosticAccuracyEvidence R) : DiagnosticAccuracyClosed R := by
  exact And.intro E.truePositiveRateClosed (And.intro E.falsePositiveRateClosed (And.intro E.aucClosed E.optimalThresholdClosed))

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
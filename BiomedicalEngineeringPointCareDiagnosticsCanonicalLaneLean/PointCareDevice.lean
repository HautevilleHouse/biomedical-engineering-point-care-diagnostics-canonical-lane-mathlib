import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure PointCareDevicePackage where
  sensorType : Type u
  detectionLimit : ℝ
  responseTime : ℝ
  calibrationCurve : Type v
  sampleVolume : ℝ
  multiplexingCapability : ℕ
  deviceValidated : Prop
  clinicalUtilityDemonstrated : Prop

structure PointCareDeviceEvidence (D : PointCareDevicePackage) where
  deviceValidatedClosed : D.deviceValidated
  clinicalUtilityDemonstratedClosed : D.clinicalUtilityDemonstrated

def PointCareDeviceClosed (D : PointCareDevicePackage) : Prop :=
  D.deviceValidated ∧ D.clinicalUtilityDemonstrated

theorem point_care_device_closed_from_evidence (D : PointCareDevicePackage)
    (E : PointCareDeviceEvidence D) : PointCareDeviceClosed D := by
  exact And.intro E.deviceValidatedClosed E.clinicalUtilityDemonstratedClosed

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.DiagnosticObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  rateConstants : Type
  initialConditions : Type
  analyticSolution : Prop
  identifiability : Prop

structure PharmacokineticModelPackage where
  absorptionModel : Type
  distributionModel : Type
  eliminationModel : Type
  clearanceEstimate : Prop
  volumeDistributionEstimate : Prop

structure DiagnosticInferencePackage where
  testResult : Type
  diseasePrevalence : Prop
  sensitivity : Prop
  specificity : Prop
  predictiveValues : Prop

structure SurvivalAnalysisPackage where
  timeToEvent : Type
  censoringIndicator : Prop
  hazardFunction : Type
  survivalFunction : Type
  coxModel : Prop

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.DiagnosticObjects
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.DiagnosticModels
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.DiagnosticAccuracy
import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiagnosticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedDiagnosticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diagnostic_endgame (A : AdmissibleClass) : ConstrainedDiagnosticClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
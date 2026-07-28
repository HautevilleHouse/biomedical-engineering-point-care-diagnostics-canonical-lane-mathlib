import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiagnosticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
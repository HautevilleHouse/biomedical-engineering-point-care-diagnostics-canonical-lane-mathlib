import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure DiagnosticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiagnosticAdmittedObject where
  space : DiagnosticSpace
  compartmentModel : Prop
  pharmacokineticModel : Prop
  diagnosticInference : Prop
  survivalAnalysis : Prop
  conclusion : Prop

structure DiagnosticEndgameState where
  object : DiagnosticAdmittedObject

def DiagnosticWitnessClosed (O : DiagnosticAdmittedObject) : Prop :=
  O.conclusion

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
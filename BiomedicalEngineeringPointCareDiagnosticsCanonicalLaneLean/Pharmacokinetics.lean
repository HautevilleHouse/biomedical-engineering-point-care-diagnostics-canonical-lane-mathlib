import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure PharmacokineticsPackage where
  drugAbsorptionModel : Type u
  distributionVolume : ℕ
  eliminationRate : ℝ
  bioavailability : ℝ
  halfLife : ℝ
  doseRegimen : Type v
  pkParametersIdentified : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  pkParametersIdentifiedClosed : P.pkParametersIdentified

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.pkParametersIdentified

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact E.pkParametersIdentifiedClosed

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
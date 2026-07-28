import canonicalLaneMathlib.AdmissibleClass

/-!
# Pharmacokinetic Inference Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure PharmacokineticInferencePackage where
  drug : Type u
  doseRegimen : Type v
  absorptionModel : Prop
  distributionModel : Prop
  eliminationModel : Prop
  concentrationTimeCurve : Prop

structure PharmacokineticInferenceEvidence (P : PharmacokineticInferencePackage) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  eliminationModelClosed : P.eliminationModel
  concentrationTimeCurveClosed : P.concentrationTimeCurve

def PharmacokineticInferenceClosed (P : PharmacokineticInferencePackage) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧
  P.eliminationModel ∧ P.concentrationTimeCurve

theorem pharmacokinetic_inference_closed_from_evidence
    (P : PharmacokineticInferencePackage)
    (E : PharmacokineticInferenceEvidence P) :
    PharmacokineticInferenceClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.eliminationModelClosed E.concentrationTimeCurveClosed))

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
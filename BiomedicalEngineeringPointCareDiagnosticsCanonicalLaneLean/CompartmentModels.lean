import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : ℕ
  rateConstants : Type u
  initialConditions : Type v
  linearDynamics : Prop
  observability : Prop
  identifiabilityConditions : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  linearDynamicsClosed : C.linearDynamics
  observabilityClosed : C.observability
  identifiabilityConditionsClosed : C.identifiabilityConditions

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.linearDynamics ∧ C.observability ∧ C.identifiabilityConditions

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.linearDynamicsClosed
    (And.intro E.observabilityClosed E.identifiabilityConditionsClosed)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

/-!
# Compartment Model Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Type u
  rates : Type v
  transferEquations : Prop
  initialConditions : Prop
  steadyStateReached : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transferEquationsClosed : C.transferEquations
  initialConditionsClosed : C.initialConditions
  steadyStateReachedClosed : C.steadyStateReached

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transferEquations ∧ C.initialConditions ∧ C.steadyStateReached

theorem compartment_model_closed_from_evidence
    (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.transferEquationsClosed
    (And.intro E.initialConditionsClosed E.steadyStateReachedClosed)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
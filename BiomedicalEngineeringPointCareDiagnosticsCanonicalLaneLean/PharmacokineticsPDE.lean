import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

structure PharmacokineticsPDEPackage (C : CompartmentModelPackage) where
  concentrationFunction : ℝ → Nat → ℝ
  differentialEquation : Prop
  initialCondition : Prop
  wellPosed : Prop

structure PharmacokineticsPDEEvidence {C : CompartmentModelPackage} (P : PharmacokineticsPDEPackage C) where
  differentialEquationClosed : P.differentialEquation
  initialConditionClosed : P.initialCondition
  wellPosedClosed : P.wellPosed

def PharmacokineticsPDEClosed {C : CompartmentModelPackage} (P : PharmacokineticsPDEPackage C) : Prop :=
  P.differentialEquation ∧ P.initialCondition ∧ P.wellPosed

theorem pharmacokinetics_pde_closed_from_evidence {C : CompartmentModelPackage}
    (P : PharmacokineticsPDEPackage C) (E : PharmacokineticsPDEEvidence P) :
    PharmacokineticsPDEClosed P := by
  exact And.intro E.differentialEquationClosed (And.intro E.initialConditionClosed E.wellPosedClosed)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse

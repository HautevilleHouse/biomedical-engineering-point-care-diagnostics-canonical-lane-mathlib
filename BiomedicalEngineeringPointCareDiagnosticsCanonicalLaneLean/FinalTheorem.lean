import HautevilleHouse.BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean

def ConstrainedBiomedicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biomedical_endgame (A : AdmissibleClass) :
    ConstrainedBiomedicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringPointCareDiagnosticsCanonicalLaneLean
end HautevilleHouse
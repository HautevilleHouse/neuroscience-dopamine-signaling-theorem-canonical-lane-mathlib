import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingTheoremCanonicalLaneLean

structure RewardPredictionPackage where
  phasicDopamineSignal : Prop
  rewardPredictionError : Prop
  temporalDifferenceLearning : Prop

structure RewardPredictionEvidence (R : RewardPredictionPackage) where
  phasicDopamineSignalClosed : R.phasicDopamineSignal
  rewardPredictionErrorClosed : R.rewardPredictionError
  temporalDifferenceLearningClosed : R.temporalDifferenceLearning

def RewardPredictionClosed (R : RewardPredictionPackage) : Prop :=
  R.phasicDopamineSignal ∧ R.rewardPredictionError ∧ R.temporalDifferenceLearning

theorem reward_prediction_closed_from_evidence (R : RewardPredictionPackage)
    (E : RewardPredictionEvidence R) : RewardPredictionClosed R := by
  exact And.intro E.phasicDopamineSignalClosed
    (And.intro E.rewardPredictionErrorClosed E.temporalDifferenceLearningClosed)

end NeuroscienceDopamineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
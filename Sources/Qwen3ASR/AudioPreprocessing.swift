import Foundation
import MLX
import AudioCommon
import Qwen3ForcedAlignerCoreML

/// MLXArray entry points for the MLX models. The mel computation itself lives in
/// Qwen3ForcedAlignerCoreML (`extractFeaturesRaw`), which has no MLX dependency;
/// these wrap its `[melBins, timeFrames]` output with the same values and shape
/// the previous in-module implementation returned.
extension WhisperFeatureExtractor {
    /// Extract mel spectrogram features from audio samples
    /// - Parameter audio: Raw audio samples (Float array, mono, at sampleRate)
    /// - Returns: Mel spectrogram [mel_bins, time_frames]
    public func extractFeatures(_ audio: [Float]) -> MLXArray {
        let features = extractFeaturesRaw(audio)
        return MLXArray(features.data, [features.melBins, features.timeFrames])
    }

    /// Process audio for Qwen3-ASR model
    /// - Parameter audio: Raw audio samples (any sample rate)
    /// - Parameter inputSampleRate: Sample rate of input audio
    /// - Returns: Preprocessed mel features ready for the model
    public func process(_ audio: [Float], sampleRate inputSampleRate: Int) -> MLXArray {
        let features = processRaw(audio, sampleRate: inputSampleRate)
        return MLXArray(features.data, [features.melBins, features.timeFrames])
    }
}

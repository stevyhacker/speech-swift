// The CoreML forced aligner and the MLX-free pieces Qwen3-ASR shares with it
// (mel features, alignment text preprocessing, timestamp correction, token IDs)
// live in Qwen3ForcedAlignerCoreML, which apps can link without MLX. Qwen3ASR
// re-exports them, so `import Qwen3ASR` sees the same API as before.
@_exported import Qwen3ForcedAlignerCoreML

import Foundation

/// Special token IDs for Qwen3-ASR
public struct Qwen3ASRTokens: Sendable {
    public static let audioTokenId = 151676        // <|audio_pad|>
    public static let audioStartTokenId = 151669   // <|audio_start|>
    public static let audioEndTokenId = 151670     // <|audio_end|>
    public static let eosTokenId = 151645          // <|im_end|>
    public static let padTokenId = 151643          // <|endoftext|>
    public static let imStartTokenId = 151644      // <|im_start|>
    public static let imEndTokenId = 151645        // <|im_end|>
    public static let timestampTokenId = 151705    // <|timestamp|>
    public static let asrTextTokenId = 151704      // <asr_text>
    public static let newlineTokenId = 198         // \n
    public static let systemTokenId = 8948         // system
    public static let userTokenId = 872            // user
    public static let assistantTokenId = 77091     // assistant
}

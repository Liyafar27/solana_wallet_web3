const Map<String, String> tokenNames = {
  'So11111111111111111111111111111111111111112': 'SOL',
  'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v': 'USDC',
};

String getTokenName(String mint) {
  return tokenNames[mint] ?? mint;
}

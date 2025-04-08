class Transaction {
  final String signature;
  final int blockTime;
  final String confirmationStatus;

  Transaction({
    required this.signature,
    required this.blockTime,
    required this.confirmationStatus,
  });

  Map<String, dynamic> toMap() {
    return {
      'signature': signature,
      'blockTime': blockTime,
      'confirmationStatus': confirmationStatus,
    };
  }

  static Transaction fromMap(Map<String, dynamic> map) {
    return Transaction(
      signature: map['signature'],
      blockTime: map['blockTime'],
      confirmationStatus: map['confirmationStatus'],
    );
  }
}
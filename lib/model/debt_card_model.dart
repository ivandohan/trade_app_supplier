class DebtCardModel {
  final String name;
  final String nominal;
  final String riskLevel;
  final String debtInterest;
  final String deadline;
  final String estimateTime;

  const DebtCardModel({
    required this.name,
    required this.nominal,
    required this.riskLevel,
    required this.debtInterest,
    required this.deadline,
    required this.estimateTime,
  });
}
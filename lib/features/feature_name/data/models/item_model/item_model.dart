class ItemModel {
  final String title;
  final String subtitle;
  final double progress;
  final bool isExpired;
  final DateTime startDate;
  final DateTime endDate;

  ItemModel({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.isExpired,
    required this.startDate,
    required this.endDate,
  });
}
// class ItemModel {
//   final String title;
//   final String subtitle;
//   final double progress;
//   final bool isExpired;
//   final DateTime startDate;
//   final DateTime endDate;
//   final Widget navigateTo; // Qo'shimcha sahifa uchun parametr
//
//   ItemModel({
//     required this.title,
//     required this.subtitle,
//     required this.progress,
//     required this.isExpired,
//     required this.startDate,
//     required this.endDate,
//     required this.navigateTo, // Qo'shildi
//   });
// }
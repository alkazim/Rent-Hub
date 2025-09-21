class Order {
  final String id;
  final String name;
  final double price;
  final String status;
  final String imageUrl;
  final List<TrackingStatus> trackingStatus;

  Order({
    required this.id,
    required this.name,
    required this.price,
    required this.status,
    required this.imageUrl,
    List<TrackingStatus>? trackingStatus,
  }) : trackingStatus = trackingStatus ?? _getDefaultTrackingStatus();

  static List<TrackingStatus> _getDefaultTrackingStatus() {
    return [
      TrackingStatus(
        title: 'Order Placed',
        date: '07/20/2024',
        isCompleted: true,
      ),
      TrackingStatus(
        title: 'Order Accepted',
        date: '07/21/2024',
        isCompleted: true,
      ),
      TrackingStatus(
        title: 'Order Packed',
        date: '07/22/2024',
        isCompleted: false,
      ),
      TrackingStatus(
        title: 'Order Completed',
        date: '07/23/2024',
        isCompleted: false,
      ),
    ];
  }
}

class TrackingStatus {
  final String title;
  final String date;
  final bool isCompleted;

  TrackingStatus({
    required this.title,
    required this.date,
    required this.isCompleted,
  });
}

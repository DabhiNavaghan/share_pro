enum ShareResult {
  shared,
  cancelled,
  error;

  static ShareResult fromString(String? value) {
    switch (value?.toLowerCase()) {
      case 'shared':
        return ShareResult.shared;
      case 'cancelled':
        return ShareResult.cancelled;
      default:
        return ShareResult.error;
    }
  }
} 
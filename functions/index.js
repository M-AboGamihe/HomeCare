const { onDocumentUpdated } = require("firebase-functions/v2/firestore");
const admin = require("firebase-admin");

admin.initializeApp();

exports.onBookingStatusChange = onDocumentUpdated(
  "bookings/{bookingId}",
  async (event) => {

    const before = event.data.before.data();
    const after = event.data.after.data();

    if (before.status === after.status) {
      return;
    }

    const userId = after.userId;

    const userDoc = await admin.firestore()
      .collection("users")
      .doc(userId)
      .get();

    if (!userDoc.exists) return;

    const fcmToken = userDoc.data().fcmToken;

    if (!fcmToken) return;

    let title = "";
    let body = "";

    if (after.status === "confirmed") {
      title = "Booking Accepted 🎉";
      body = "Your booking has been accepted.";
    } else if (after.status === "cancelled") {
      title = "Booking Rejected ❌";
      body = "Your booking was rejected.";
    }

    return admin.messaging().send({
      token: fcmToken,
      notification: {
        title,
        body,
      },
      data: {
        bookingId: event.params.bookingId,
        status: after.status,
      },
    });
  }
);
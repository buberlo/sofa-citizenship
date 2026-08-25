import Foundation

/// A shareable record issued when a Sofaia resident moves too much.
struct DeportationCertificate: Identifiable, Codable, Hashable {
    let id: UUID
    let certificateNumber: String
    let issuedAt: Date
    let room: Room
    let movementScore: Int
    let calmDaysLost: Int
    let reason: String
    let fineAmount: Int?

    var title: String { "Certificate of Deportation" }
    var roomName: String { String(describing: room) }

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: issuedAt)
    }

    var headline: String {
        "Too much motion detected in \(roomName)."
    }

    var summary: String {
        "Deported from \(roomName) after a movement score of \(movementScore)."
    }

    var fineText: String? {
        fineAmount.map { "\($0) Sofaia credits" }
    }

    var body: String {
        """
        By the authority of the Ministry of Stillness, this certifies that the bearer was deported from \(room
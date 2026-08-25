import Foundation

/// A single residency stamp issued by the Ministry of Stillness.
struct ResidencyStamp: Identifiable, Codable, Hashable {
    let id: UUID
    let dateAwarded: Date
    let room: Room
    let calmDays: Int
    let movementScore: Int
    let note: String
    var stampNumber: Int?

    init(
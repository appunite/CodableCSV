import Foundation

internal extension DateFormatter {
    /// `DateFormatter` for ISO 8610 date formats.
    internal static let iso8601: DateFormattable = {
        if #available(OSX 10.12, *) {
            let formatter = ISO8601DateFormatter()
            formatter.formatOptions = .withInternetDateTime
            return formatter
        } else {
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
            return formatter
        }
    }()
}

internal protocol DateFormattable {
    func string(from date: Date) -> String
    func date(from string: String) -> Date?
}

@available(OSX 10.12, *)
extension ISO8601DateFormatter: DateFormattable {}
extension DateFormatter: DateFormattable {}

import Foundation

final class APIService {
    var baseURL: URL = URL(string: "https://example.invalid")!
    var token: String = ""

    func createStripeCheckoutSession(invoiceId: String) async throws -> URL {
        URL(string: "https://checkout.stripe.com/pay/mock_\(invoiceId)")!
    }

    func requestTemplatePreview() async throws -> URL {
        URL(string: "https://example.invalid/preview.pdf")!
    }
}

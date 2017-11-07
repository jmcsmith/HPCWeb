import Vapor
import HTTP

/// Here we have a controller that helps facilitate
/// creating typical REST patterns
final class PrivacyController: ResourceRepresentable {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }
    
    /// GET /hello
    func index(_ req: Request) throws -> ResponseRepresentable {
        return try view.make("privacy")
    }
    

    
    /// When making a controller, it is pretty flexible in that it
    /// only expects closures, this is useful for advanced scenarios, but
    /// most of the time, it should look almost identical to this
    /// implementation
    func makeResource() -> Resource<String> {
        return Resource(
            index: index
        )
    }
}



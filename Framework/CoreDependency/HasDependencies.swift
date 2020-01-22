import UIKit

/// Attach to any type for exposing the dependency container
 public protocol HasDependencies {
    var dependencies: Dependency { get }
}

extension HasDependencies {
    
    /// Container for dependency instance factories
    public var dependencies: Dependency {
        return DependencyInjector.dependencies
    }
}

/// Used to pass around dependency container
/// which can be reassigned to another container
struct DependencyInjector {
    static var dependencies: Dependency = CoreDependency()
    private init() { }
}

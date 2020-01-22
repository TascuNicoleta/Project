import UIKit

/// Attach to any type for exposing the dependency container
 public protocol HasDependencies {
    var dependencies: Dependency { get }
}

extension HasDependencies {
    
    /// Container for dependency instance factories
    var dependencies: Dependency {
        return DependencyInjector.dependencies
    }
}

/// Used to pass around dependency container
/// which can be reassigned to another container
public struct DependencyInjector {
    static var dependencies: Dependency = CoreDependency()
    private init() { }
}

//extension UIApplicationDelegate {
//    
//    func configure(dependency: Dependency) {
//        DependencyInjector.dependencies = dependency
//    }
//}

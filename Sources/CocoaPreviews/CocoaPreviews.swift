import SwiftUI
#if canImport(AppKit)
import AppKit
public typealias CocoaViewController = NSViewController
public typealias CocoaView = NSView
@available(macOS 10.15, *)
public typealias CocoaViewControllerRepresentable = NSViewControllerRepresentable
@available(macOS 10.15, *)
public typealias CocoaViewRepresentable = NSViewRepresentable
#endif
#if canImport(UIKit)
import UIKit
public typealias CocoaViewController = UIViewController
public typealias CocoaView = UIView
@available(iOS 13.0, *)
public typealias CocoaViewControllerRepresentable = UIViewControllerRepresentable
@available(iOS 13.0, *)
public typealias CocoaViewRepresentable = UIViewRepresentable
#endif

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
public struct CocoaViewControllerPreviews: CocoaViewControllerRepresentable {
    public let viewController: CocoaViewController
    public init(viewController: CocoaViewController) {
        self.viewController = viewController
    }

    #if canImport(AppKit)
    public typealias NSViewControllerType = CocoaViewController
    public func makeNSViewController(context: Context) -> CocoaViewController {
        viewController
    }

    public func updateNSViewController(_ nsViewController: CocoaViewController, context: Context) {}
    #endif

    #if canImport(UIKit)
    public typealias UIViewControllerType = CocoaViewController
    public func makeUIViewController(context: Context) -> CocoaViewController {
        viewController
    }

    public func updateUIViewController(_ uiViewController: CocoaViewController, context: Context) {}
    #endif
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
public extension CocoaViewController {
    func asSwiftUIPreviews() -> CocoaViewControllerPreviews {
        CocoaViewControllerPreviews(viewController: self)
    }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
public struct CocoaViewPreviews: CocoaViewRepresentable {
    let view: CocoaView
    init(view: CocoaView) {
        self.view = view
    }

    #if canImport(AppKit)
    public typealias NSViewType = CocoaView
    public func makeNSView(context: Context) -> CocoaView {
        view
    }

    public func updateNSView(_ nsView: CocoaView, context: Context) {}
    #endif
    #if canImport(UIKit)
    public typealias UIViewType = CocoaView
    public func makeUIView(context: Context) -> CocoaView {
        view
    }

    public func updateUIView(_ uiView: CocoaView, context: Context) {}
    #endif
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
public extension CocoaView {
    func asSwiftUIPreviews() -> CocoaViewPreviews {
        CocoaViewPreviews(view: self)
    }
}

import SwiftUI

#if canImport(UIKit)
import SafariServices

public struct SafariView: UIViewControllerRepresentable {
    
    
    // MARK: Stored Properties
    
    let url: URL
    
    
    // MARK: Methods
    
    public func makeUIViewController(context: Context) -> SFSafariViewController {
        
        let configuration = SFSafariViewController.Configuration()
        configuration.barCollapsingEnabled = false
        
        return SFSafariViewController(url: url, configuration: configuration)
    }
    
    public func updateUIViewController(_ controller: SFSafariViewController, context: Context) {}
}

#endif

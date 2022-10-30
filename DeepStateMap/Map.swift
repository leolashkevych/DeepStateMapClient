//
//  Map.swift
//  DeepStateMap
//
//  Created by Leo Lashkevych on 2022-10-29.
//

import Foundation
import WebKit

class MapVC: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        let config = getWebConfig()
        webView = WKWebView(frame: CGRect.zero, configuration: config)
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.parent?.navigationItem.title = "Map"
        
        let url = URL(string: "https://deepstatemap.live/")!
        webView.load(URLRequest(url: url))
    }

    func getWebConfig() -> WKWebViewConfiguration{
        // Load JS to clean up the map and remove overlays
        let config = WKWebViewConfiguration()
        let jsURL = Bundle.main.path(forResource: "clean", ofType: "js")
        let scriptSource = try! String(contentsOfFile: jsURL!, encoding: String.Encoding.utf8)
        let script = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: false)
        let userContentController = WKUserContentController()
        userContentController.addUserScript(script)
        config.userContentController = userContentController
        return config
    }
}

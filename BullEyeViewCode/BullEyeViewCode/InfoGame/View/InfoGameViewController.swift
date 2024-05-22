//
//  InfoGameViewController.swift
//  BullEyeViewCode
//
//  Created by Michelly Nonato on 21/05/24.
//
import UIKit
import WebKit

final class InfoGameViewController: UIViewController, InfoGameViewModelDelegate, WKNavigationDelegate {
    // MARK: Class
    private let viewModel: InfoGameViewModel
    
    init(viewModel: InfoGameViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.navigationDelegate = self
        return webView
    }()
    
    func reloadUI() {}
    
    //  MARK: Constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWebView()
        loadWebContent()
    }
    
    private func setupWebView() {
        view.addSubview(webView)
        view.backgroundColor = #colorLiteral(red: 0.917743504, green: 0.8449929357, blue: 0.8112065196, alpha: 1)
        webView.backgroundColor = #colorLiteral(red: 0.917743504, green: 0.8449929357, blue: 0.8112065196, alpha: 1)
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func loadWebContent() {
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html"){
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    // Implementação opcional de métodos de WKNavigationDelegate
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Webview did finish loading")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("Failed to load webview with error: \(error.localizedDescription)")
    }
    
    private func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
}

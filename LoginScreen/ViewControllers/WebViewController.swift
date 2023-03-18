//
//  WebViewController.swift
//  LoginScreen
//
//  Created by Apple on 15/11/2022.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        NSLog("WebViewController loadView()")
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    @IBOutlet weak var alertButton: UIBarButtonItem!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("WebViewController viewDidLoad()")
        
//        customizeNavBar()

        // Do any additional setup after loading the view.
        let url = URL(string: "http://www.apple.com/")!
        webView.load(URLRequest(url: url))
    }
    
//    func customizeNavBar() {
//        navigationController?.navigationBar.tintColor = UIColor.white
//        navigationController?.navigationBar.barTintColor = UIColor.lightGray
//        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = "iMote"
    }
}

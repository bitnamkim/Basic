//
//  ViewController.swift
//  MiniBrowser_12월13일저녁복습
//
//  Created by 흠냐방구 on 13/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialURL = "https://www.facebook.com"
        urlTextField.text = initialURL
        mainWebView.load(URLRequest(url: URL(string: initialURL)!))
        mainWebView.navigationDelegate = self
        
    }
    @IBAction func bookMarkAction(_ sender: Any) {
        var urlString = "www.\(urlTextField.text!).com"
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlString)"
        }
        

        
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
    

}


//
//  ViewController.swift
//  MiniBrowser_12월18일아침
//
//  Created by 흠냐방구 on 18/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate  {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://www.facebook.com"
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        mainWebView.navigationDelegate = self
    }
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkControl = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(urlTextField.text!).com"
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
    }
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopLoadingAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://"){
            urlString = "https://\(urlTextField.text!)"
        }
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicator.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicator.stopAnimating()
    }
    

}


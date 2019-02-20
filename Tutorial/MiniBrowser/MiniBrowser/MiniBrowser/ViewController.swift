//
//  ViewController.swift
//  MiniBrowser
//
//  Created by 흠냐방구 on 19/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
import WebKit
// 원래 webkit이 uikit의 하위 클래스였는데 독립을 했음. 그래서 따로 import 해줘야함. 그래야 webview outlet선언할 때 오류가 안 생김.
class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    // WKNavigationDelegate 사용법 문서 볼 것.
    @IBOutlet weak var bookMarkSegmentControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string: initialURL)
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURL
        mainWebView.navigationDelegate = self
        // 27번째 코드가 있어야 페이지 다 로드된 상태에서 activityindicator가 없어짐. 이 코드 없으면 계속 돌아감.
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookMarkSegmentControl.titleForSegment(at: bookMarkSegmentControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkURL!).com"
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        // segmented control의 텍스트가 바뀔때마다 알맞은 리턴을 해주는 코드.
        // 문서보면 자세하게 나와있음.
        // 맨 마지막 코드는 초기화 해주는 viewDidLoad에 써준 코드를 줄여서 써준거임.
        urlTextField.text = urlString
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://"){
            urlString = "https://\(urlTextField.text!)"
            // 도메인창에 https 안써도 자동으로 입력되게 해주는 코드임.
        }
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        return true
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
    
    
    

}


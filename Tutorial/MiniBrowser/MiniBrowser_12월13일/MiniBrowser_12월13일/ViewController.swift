//
//  ViewController.swift
//  MiniBrowser_12월13일
//
//  Created by 흠냐방구 on 13/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    // UITextFieldDelegate처럼 Delegate 선언해주면 storyboard에 가서 꼭! 연결해줘야함.
    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialURL = "https://www.facebook.com"
        // 맨 처음 화면에 페이스북 사이트 뜨게 하는것.
        mainWebView.load(URLRequest(url: URL(string: initialURL)!))
        // 앱 첫 화면에 나오는 사이트 로드하는 코드
        urlTextField.text = initialURL
        mainWebView.navigationDelegate = self
        // 원래 일반적인 Delegate는 storyboard에서 직접 연결하는게 가능했는데, Activity Indicator는 무조건 코드로 써줘야함.
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
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        // 선언한 상수에다가 bookMarkSegmentedControl의 titleForSegment 속성을 적용시킬거임. 그 인자로는 bookMarkSegmentedControl의 selectedSegmentIndex 속성을 사용할거임.
        // titleForSegment 메써드는 특정 타이틀을 리턴해주는 속성. selectedSegmentIndex 프로퍼티는 선택된 세그먼트 인덱스마다 선택된 세그먼트에 해당하는 값을 리턴해줌.
        let urlString = "https://www.\(bookMarkURL!).com"
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        // urlTextField 공간에 urlString값을 할당해주는거임.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 리턴버튼(Done버튼) 누르면 키보드 내려가게 하는 메써드
        var urlString = "\(urlTextField.text!)"
        // urlTextField에 입력된 주소를 가져와야함. 그래서 위처럼 써줌.
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
            // https 입력 안해도 도메인 입력 가능하게 해주는 코드.
        }
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
}


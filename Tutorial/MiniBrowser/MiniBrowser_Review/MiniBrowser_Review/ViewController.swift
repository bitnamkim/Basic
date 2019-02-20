//
//  ViewController.swift
//  MiniBrowser_Review
//
//  Created by 흠냐방구 on 22/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    // IBOutlet은 view를 표시하게 해주는거임. IBOutlet 안되어 있으면 화면에 UI 표시 안됨.
    
    @IBOutlet weak var bookmarkSegmentedControl:UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let initialURL = "https://www.facebook.com"
//        초기 URL 설정하는 코드
//        let myURL = URL(string: initialURL)
//        초기 설정한 URL을 string으로 받아준다는 코드
//        let myRequest = URLRequest(url: myURL!)
//        string으로 받은 URL을 요청한다는 코드
//        mainWebView.load(myRequest)
//        mainWebView에 출력한다는 코드
        
        mainWebView.load(URLRequest(url: URL(string: "https://www.facebook.com")!))
        // 위에 4줄이랑 이 1줄 코드랑 같은거임. 순서를 잘 외우자. 이거 자주 쓰임.
        // URL 주소를 로딩하는 코드
        let initialURL = "https://www.facebook.com"
        urlTextField.text = initialURL
        // URL을 표시하는 코드
        mainWebView.navigationDelegate = self
        // Activity Indicator의 delegate를 선언해줘서 메써드를 사용할 수 있게 만드는 코드. 원래 메인 스토리보드에서 연결하면 되는데 Activity Indicator는 연결이 안되고 무조건 코드로 써줘야함.
        
    }
    @IBAction func bookmarkAction(_ sender: Any) {
        let bookmarkURL = bookmarkSegmentedControl.titleForSegment(at: bookmarkSegmentedControl.selectedSegmentIndex)
        // bookmarksegmentedcontrol의 titleforsegment 메써드 사용해서 selectedSegmentindex 속성을 사용해주는 코드
        // segmentedcontrol 영역을 누를때마다 각기 다른 segmentedcontrol 영역의 값을 리턴 해줄수 있게 해주는 코드
        let urlString = "https://www.\(bookmarkURL!).com"
        // 각기 다른 segmentedcontorl의 값을 url로 설정한거임.
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        // url 주소를 요청하고 로딩하는 코드
        urlTextField.text = urlString
        // 설정한 url 값을 출력하는 코드
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // return 버튼 누르면 키보드 내려가게 하는 메써드
        
        var urlString = "\(urlTextField.text!)"
        // urlTextField로 변수 설정
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
        }
        // 접두사 https:// 를 붙여주는 코드. 사용법 잘 숙지할 것.
        urlTextField.text = urlString
        // url 출력
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        // url 요청&로딩
        urlTextField.resignFirstResponder()
        return true
        // true값 설정
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicator.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicator.stopAnimating()
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




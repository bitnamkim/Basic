//
//  ViewController.swift
//  Image Downloader
//
//  Created by 흠냐방구 on 03/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import UIKit

// ⭐️모르거나 애매한거 있으면 일단 print 해서 확인하자!!⭐️
class ViewController: UIViewController, URLSessionDownloadDelegate {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    var downloadTask:URLSessionDownloadTask!
    // URLSessionDownloadTask를 사용하는 변수를 선언 해줘서 밑에서 쓸 수 있게 해주는거임
    @IBAction func downloadAction(_ sender: Any) {
        imgView.image = nil
        // 이미지를 다시 다운받기 누르면 UI에서 이미지가 없어지고 새롭게 받아짐.
        indicatorView.startAnimating()
        // 다운로드 시작되면 indicatorView가 움직임.
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: OperationQueue.main)
        // delegate 안 쓰고 closure 문법으로 구현할거라서 delegate에 nil값 줬음.
        // delegate로 할려면 delegate를 self로 써주고, 이 밑에 줄에 있는 코드 주석 풀어줄 것.
        // downloadTask = session.downloadTask(with: URL(string:"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!)
        downloadTask = session.downloadTask(with: URL(string:"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!, completionHandler: {(data, response, error) -> Void in
        // completionHandler : {(data 인자에 값을 받고, 에러가 생기면 리터해주는 곳, 에러) -> Void in })
        // closure 문법 사용법 -> iBooks에 표시해놨음.
        // closure를 사용하면 progress view가 표시안됨. progress view에서 진행상태 표시할 때는 delegate 쓸 것.
        let dataTemp:Data = try! Data(contentsOf: data!)
        self.imgView.image = UIImage(data: dataTemp)
        self.indicatorView.stopAnimating()
            
        })
        downloadTask.resume()
    }
    @IBAction func suspendAction(_ sender: Any) {
        downloadTask.suspend()
    }
    @IBAction func resumeAction(_ sender: Any) {
        downloadTask.resume()
    }
    @IBAction func cancelAction(_ sender: Any) {
        downloadTask.cancel()
        progressView.setProgress(0.0, animated: false)
        indicatorView.stopAnimating()
        // 취소 버튼을 누르면 progress 막대는 0으로 초기화 되고, 애니메이션은 중지됨. 이 때 indicatorView도 중지됨.
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        
        let progress:Float = Float(totalBytesWritten)/Float(totalBytesExpectedToWrite)
        // 이미지 다운로드가 완료되면 1이 됨.
        progressView.setProgress(progress, animated: true)
        // 다운로드 돼서 프로그레스가 진행되는 상황이 시각적으로 보여줌. UI에 표시됨.
        
        // print("bytesWritten: \(bytesWritten)")
        // 파일 용량이 2mb라고 하면 그 패킷이 한꺼번에 오지는 않음. 나눠져서 오는 바이트들을 콜해주는 코드.
        // print("totalBytesWritten : \(totalBytesWritten)")
        // 나눠져서 오는 바이트들의 누적된 합계를 콜하는 코드. 콜이 되어진 bytesWritten들의 누적합계가 표시됨.
        // print("totalBytesExpectedToWrite: \(totalBytesExpectedToWrite)")
        // 전체 용량을 콜하는 코드. 전체 용량이니까 계속 같은 값만 출력함.
        
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        // required 메써드. 꼭 써줘야 하는 메써드.
        // print("location: \(location)")
        // 이미지가 다운로드 되는 위치를 알려주는 코드.
        let dataTemp:Data = try! Data(contentsOf: location)
        self.imgView.image = UIImage(data: dataTemp)
        // imgView에 이미지를 넣어줄거임. UIImage를 데이터 형태로 변형시켜서 넣어주는거임.
        self.indicatorView.stopAnimating()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


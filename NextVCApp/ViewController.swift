//
//  ViewController.swift
//  NextVCApp
//
//  Created by 김서연 on 2023/08/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //코드로 화면 이동(다음 화면이 코드로 작성되어 있을 때만 가능)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        present(firstVC, animated: true)
    }
    
    //코드로 스토리보드 객체 생성해서, 화면으로 이동
    @IBAction func storyBoardWithCodeTapped(_ sender: UIButton) {
        
    }
    
    //스토리보드에서의 화면 이동(간접세그웨이)
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton) {
        
    }
    
}


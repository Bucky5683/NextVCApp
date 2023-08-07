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
        firstVC.someString = "안녕하세요" //-> 스토리보드로 만들면 메모리에 아직 올라가지 않아 에러가 난다.
        firstVC.modalPresentationStyle = .fullScreen
        
        present(firstVC, animated: true)
    }
    
    //코드로 스토리보드 객체 생성해서, 화면으로 이동
    @IBAction func storyBoardWithCodeTapped(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        secondVC.someString = "아빠상어"
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
    //스토리보드에서의 화면 이동(간접세그웨이)
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self) //세그웨이 실행
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC"{
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "엄마상어"
        }
        if segue.identifier == "toFourthVC"{
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "아빠상어"
        }
    }
    
}


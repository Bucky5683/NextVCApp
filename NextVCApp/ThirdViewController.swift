//
//  ThirdViewController.swift
//  NextVCApp
//
//  Created by 김서연 on 2023/08/07.
//

import UIKit

class ThirdViewController: UIViewController{
    @IBOutlet weak var mainLabel: UILabel!
    var someString: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = someString
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}

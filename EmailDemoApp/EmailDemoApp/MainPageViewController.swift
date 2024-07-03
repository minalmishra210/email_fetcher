//
//  MainPageViewController.swift
//  EmailDemoApp
//
//  Created by Meenal Mishra on 02/07/24.
//

import UIKit
import EmailApiFramework

class MainPageViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func callButtonClicked(_ sender: UIButton) {
        let childVC = EmailListView()
        childVC.modalPresentationStyle = .fullScreen
        childVC.dataHandler = { data in
            self.emailLabel.text = data
        }
        self.present(childVC, animated: true,completion: nil)
    }
}

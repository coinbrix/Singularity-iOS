//
//  SingularityViewController.swift
//  SingularitySwiftSample
//
//  Created by Shubham Garg on 23/11/22.
//

import UIKit
import SingularityKit

class SingularityViewController: UIViewController {
    @IBOutlet weak var keyTF: UITextField!
    @IBOutlet weak var envTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPDefaultParams()
    }
    
    func setUPDefaultParams() {
        keyTF.text = "neobrix"
        envTF.text = "0"
    }

    @IBAction func loginBtnAxn(_ sender: Any) {
        let key = keyTF.text ?? "neobrix"
        var env = SingularityEnvironMent.test
        if envTF.text == "1" {
            env = .production
        }
        let params = SingularityParams(merchantId: key, environment: env)
        SingularitySDKInitializer.startLogin(on: self, with: params, listener: SingularityEventListner())
    }
}

class SingularityEventListner: SingularityListener {
    func onGetSingularityUserInfo(user: [String : Any]) {
        print(user)
    }
    
    func onSingularityClose() {
        print("onSingularityClose")
    }
    
    func onSingularityLogout() {
        print("onSingularityLogout")
    }
    
    func onSingularityError(message: String, code: Int) {
        print(message)
    }
    
    
}

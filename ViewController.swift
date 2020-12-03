//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 玉城秀大 on 2020/11/09.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    //@IBOutlet＝パーツとして繋いでいる。このパーツの名前はlogoImageViewである。
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //デリゲートを自分のクラスに設定
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        
    }

    //名前はloginで、＠IBActionはloginが押された時のアクション
    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        
        
        
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passwordTextField.text
        
        
    }
    
    //タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //viewをendEditing(編集)するか？true(Yes)
        view.endEditing(true)
    }
    
    //リターンキーを押した時にキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードが閉じる
        textField.resignFirstResponder()
    }
    
    
    
    
}


//
//  ViewController.swift
//  Kadai1
//
//  Created by KS on 2021/08/10.
//

import UIKit

class ViewController: UIViewController{
    
    private var textFieldArray = [UITextField]()
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for arrays in 0...4{
            let textField = UITextField(frame: CGRect(x: 50, y: CGFloat(50 * (arrays+2)), width: 150, height: 34))
            textField.borderStyle = .roundedRect
            textField.keyboardType = .numberPad
            textFieldArray.append(textField)
            view.addSubview(textField)
        }
    }
    
    @IBAction func showResultButton(_ sender: Any) {
        caluculateResult()
        view.endEditing(true)
    }
    
    func caluculateResult(){
        var resultCount = 0
        
        for arrays in 0...textFieldArray.count - 1{
            if let inputCount = Int(textFieldArray[arrays].text!){
                resultCount += inputCount
            }
        }
        resultLabel.text = String(resultCount)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

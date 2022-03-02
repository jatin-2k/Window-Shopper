//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Jatin Agrawal on 02/03/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var First: CurrencyTextField!
    @IBOutlet weak var Second: CurrencyTextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.Calculate), for: .touchUpInside)
        
        First.inputAccessoryView = calcBtn
        Second.inputAccessoryView = calcBtn
    }
    
    @objc func Calculate(){
        if let wageTxt = First.text, let priceTxt = Second.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                result.text = "\(Wage.calc(forWage: wage, andPrice: price))"
            }
        }
    }

}


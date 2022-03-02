//
//  CurrencyTextField.swift
//  Window-Shopper
//
//  Created by Jatin Agrawal on 02/03/22.
//

import UIKit

class CurrencyTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2490167942)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if placeholder == nil {
            placeholder = " "
        }
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}

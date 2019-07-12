//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Jake Ojero on 2019-07-11.
//  Copyright © 2019 jakeojero.me. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20;
        // Create a label in the middle of the text field
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2 - size/2), width: size, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8643018603, green: 0.8644472957, blue: 0.8642827272, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        // show the symbol inside the label
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        // when implementing draw make sure clip to bounds is set to prevent bleeding
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

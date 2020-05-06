//
//  CustomeTxtField.swift
//  Windows-Shopper
//
//  Created by Hossein Ghaedi on 05/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import UIKit

@IBDesignable

class CustomeTxtField: UITextField {
    
    // DRAW A Currency Symbol
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 40
        let lblCurrency = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        lblCurrency.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.7528360445)
        lblCurrency.textAlignment = .center
        lblCurrency.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lblCurrency.layer.cornerRadius = 5.0
        lblCurrency.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current //showing symbol currency base on location
        
        lblCurrency.text = formatter.currencySymbol
        addSubview(lblCurrency)
        
    }
    //END DRAW
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}

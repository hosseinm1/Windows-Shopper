//
//  ViewController.swift
//  Windows-Shopper
//
//  Created by Hossein Ghaedi on 05/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CustomeTxtField!
    @IBOutlet weak var itemPriceTxt: CustomeTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4811956286, blue: 0.1703838706, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calc), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        itemPriceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    
    @objc func calc(){
        
        if let wagetext = wageTxt.text, let priceTxt = itemPriceTxt.text{
            if let wage = Double(wagetext) , let priceitem = Double(priceTxt){
             view.endEditing(true)
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: priceitem))"
                resultLbl.isHidden = false
                hoursLbl.isHidden = false

            }
        }
        
    }
    
    
    @IBAction func clearBtn(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
        
    }
    
}


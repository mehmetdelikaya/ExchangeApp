//
//  ExchangeDetailViewController.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 11.07.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class ExchangeDetailViewController: UIViewController {

    @IBAction func buttonCalculate(_ sender: Any) {
        calculate(option: shouldMultiply)
    }
    @IBAction func buttonReverse(_ sender: Any) {
        reverse()
    }
    @IBOutlet weak var viewBack: UIView!
    @IBOutlet weak var imgSelected: UIImageView!
    @IBOutlet weak var labelSelectedCurrency: UILabel!
    @IBOutlet weak var textViewAmount: UITextView!
    @IBOutlet weak var labelCurrencyName: UILabel!
    
    @IBOutlet weak var labelTargetSelling: UILabel!
    @IBOutlet weak var labelTargetBuying: UILabel!
    @IBOutlet weak var imgTarget: UIImageView!
    var listItem : ListModel?
    var shouldMultiply = true
    
    @objc func tapped(_ sender:UITapGestureRecognizer){
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func addDoneButtonOnKeyboard(){
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        textViewAmount.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction(){
        textViewAmount.resignFirstResponder()
        calculate(option: shouldMultiply)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        let gestureSwift2AndHigher = UITapGestureRecognizer(target: self, action:  #selector (self.tapped (_:)))
        self.viewBack.addGestureRecognizer(gestureSwift2AndHigher)
      
        self.addDoneButtonOnKeyboard()
        
        prepareInitial()
        calculate(option: shouldMultiply)
    }
    
    func prepareInitial(){
        labelSelectedCurrency.text = listItem?.name
        labelCurrencyName.text = listItem?.name
        
        if let flagName = listItem?.imageName{
            imgSelected.isHidden = false
            imgSelected.image = UIImage(named: flagName)
        }else{
            imgSelected.isHidden = true
        }
        imgTarget.image = UIImage(named: "TR")
    }
    
    func calculate(option shouldMultiply: Bool){
        if let amountEntered = textViewAmount.text,
            let buyingPrice = listItem?.buying,
            let sellingPrice = listItem?.selling {
            
            let doubleAmountEntered = Double(amountEntered)
            let doubleBuyingPrice = Double(buyingPrice)
            let doubleSellingPrice = Double(sellingPrice)
            
            if shouldMultiply{
                labelTargetBuying.text = String(format: "Alış: %.2f", doubleAmountEntered! * doubleBuyingPrice!)
                labelTargetSelling.text = String(format:"Satış:  %.2f", doubleAmountEntered! * doubleSellingPrice! )
            } else {
                labelTargetBuying.text = String(format: "Alış: %.2f", doubleAmountEntered! / doubleBuyingPrice!)
                labelTargetSelling.text = String(format:"Satış:  %.2f", doubleAmountEntered! / doubleSellingPrice! )
            }
            
        }
        
    }
    
    func reverse(){
        shouldMultiply = !shouldMultiply
        
        if shouldMultiply {
            
            prepareInitial()
            
        }else{
            labelSelectedCurrency.text = "Turkish Liras"
            labelCurrencyName.text = "Turkish Liras"
            imgSelected.image = UIImage(named: "TR")
            
            if let flagName = listItem?.imageName{
                imgTarget.isHidden = false
                imgTarget.image = UIImage(named: flagName)
            }else{
                imgTarget.isHidden = true
            }
        }
        
        
        calculate(option: shouldMultiply)
    }
}

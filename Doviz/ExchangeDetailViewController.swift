//
//  ExchangeDetailViewController.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 11.07.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class ExchangeDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
        labelSelectedCurrency.text = listItem?.name
        labelCurrencyName.text = listItem?.name
        
        if let flagName = listItem?.imageName{
            imgSelected.isHidden = false
            imgSelected.image = UIImage(named: flagName)
        }else{
            imgSelected.isHidden = true
        }
        
        
        let gestureSwift2AndHigher = UITapGestureRecognizer(target: self, action:  #selector (self.tapped (_:)))
        self.viewBack.addGestureRecognizer(gestureSwift2AndHigher)
        
        imgTarget.image = UIImage(named: "TR")

        
        calculate(option: shouldMultiply)
        
    
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
    
    var shouldMultiply = true
    
    func reverse(){
        
        shouldMultiply = !shouldMultiply
        
        labelSelectedCurrency.text = "Turkish Liras"
        labelCurrencyName.text = "Turkish Liras"
        imgSelected.image = UIImage(named: "TR")
        
        if let flagName = listItem?.imageName{
             imgTarget.isHidden = false
             imgTarget.image = UIImage(named: flagName)
        }else{
             imgTarget.isHidden = true
        }
        
        calculate(option: shouldMultiply)
    }
    
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
   
    @objc func tapped(_ sender:UITapGestureRecognizer){
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

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
        
        
        labelSelectedCurrency.text = listItem?.name
        
        if let flagName = listItem?.imageName{
            imgSelected.isHidden = false
            imgSelected.image = UIImage(named: flagName)
        }else{
            imgSelected.isHidden = true
        }
        
        
        let gestureSwift2AndHigher = UITapGestureRecognizer(target: self, action:  #selector (self.tapped (_:)))
        self.viewBack.addGestureRecognizer(gestureSwift2AndHigher)
        

    }
    
    
    @IBOutlet weak var viewBack: UIView!
    @IBOutlet weak var imgSelected: UIImageView!
    @IBOutlet weak var labelSelectedCurrency: UILabel!
    @IBOutlet weak var textViewAmount: UITextView!
    
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

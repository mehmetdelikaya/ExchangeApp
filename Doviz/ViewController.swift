//
//  ViewController.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 21.06.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listExchangeData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! CustomizedCells
        
        let item = listExchangeData![indexPath.row]
        cell.labelCurrencyFullName?.text = item.name
        cell.labelCurrencyShortCode?.text = item.name
        cell.labelBuyingPrice?.text = "Alış : \(item.buying ?? "")"
        cell.labelSellingPrice?.text = "Satış : \(item.selling ?? "")"
        cell.imgCountryFlag?.image = UIImage(named: "GB")
        
        cell.layer.cornerRadius = 6
        cell.clipsToBounds = true
       
        if indexPath.row % 2 == 0{
            cell.contentView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else {
            cell.contentView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Hint", message: "You have selected row \(indexPath.row)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        
        self.present(alertController,animated: true,completion: nil)
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private var listExchangeData : [ListModel]?
    private var exchangeResponse : ResponseModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prepareList()
        getExchangeRates()
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func prepareList(){
       
        tableView.dataSource = self
        tableView.delegate = self
        
        //self.tableView.rowHeight = UITableView.automaticDimension
        //self.tableView.estimatedRowHeight = 126.0
        
        tableView.register(UINib.init(nibName: "CustomizedCells", bundle: nil), forCellReuseIdentifier: "cellReuseIdentifier")
    }
    
    func prepareListData(){
        
        let listModel = ListModelConverter.init(model: exchangeResponse!)
        listExchangeData = listModel.getListArray()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
    func getExchangeRates(){
        let requestURL = URL(string: "https://finans.truncgil.com/today.json")!
        
        let task = URLSession.shared.dataTask(with: requestURL) {data,response,error in
            
            if error == nil {
                if let data = data {
                    if let jsonString = String(data: data, encoding: .utf8) {
                        print(jsonString)
                        do {
                            self.exchangeResponse = try JSONDecoder().decode(ResponseModel.self, from: data)
                            
                            print(self.exchangeResponse?.abdDolari.alış ?? "NONE")
                            self.prepareListData()
                            
                            
                            
                        } catch let error {
                            print(error)
                        }
                    }
                }
            }
            
        }
        task.resume()
        
        
    }
}


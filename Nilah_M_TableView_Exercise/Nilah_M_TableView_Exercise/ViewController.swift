//
//  ViewController.swift
//  Nilah_M_TableView_Exercise
//
//  Created by Nilah Marshall on 8/4/20.
//  Copyright © 2020 Nilah Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let favFruits:[String] = ["Strawberries", "Apples", "Grapes", "Bananas", "Oranges", "Mangos", "Kiwi", "Pineapples"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favFruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellID")
        cell?.textLabel?.text = favFruits[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = favFruits[indexPath.row]
       
        let alert = UIAlertController(title: "Yum you chose this delicious fruit!!!", message: "\(selectedItem)", preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}




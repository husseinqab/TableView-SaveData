//
//  ViewController.swift
//  Table View Exercise
//
//  Created by Hussein Qabalan on 4/7/20.
//  Copyright © 2020 Hussein Qabalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MyTableViewCellDelegate {
    
    
    var textAtIndexDictionary : [IndexPath : String] = [:]
    
    @IBOutlet weak var tableViewWithAlert: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewWithAlert.delegate = self
        tableViewWithAlert.dataSource = self
        
        tableViewWithAlert.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.helloLabel.text = "\(indexPath.row)"
        cell.textField.text = textAtIndexDictionary[indexPath]
        cell.index = indexPath
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Dani", message: "\(indexPath.row)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func saveData(text: String, at index: IndexPath) {
           textAtIndexDictionary[index] = text
       }


}


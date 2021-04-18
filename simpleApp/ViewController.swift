//
//  ViewController.swift
//  simpleApp
//
//  Created by ALISHA JOSHI K on 24/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tblView: UITableView!
    
    @IBOutlet weak var btnSUBMIT: UIButton!
    @IBOutlet weak var btnRESET: UIButton!
    
    let arr = ["Label1", "Label2", "Label3"]
    let lblColor = [UIColor.red, UIColor.green, UIColor.blue]
    let bgClr = [UIColor.gray, UIColor.white, UIColor.yellow]
    override func viewDidLoad() {
        
        tblView.delegate = self
        tblView.dataSource = self
        super.viewDidLoad()
        
    }
    
    
    @IBAction func submit(_ sender: Any) {
    }
    
    @IBAction func reset(_ sender: Any) {
    }
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        cell.textLabel?.textColor = lblColor[indexPath.row]
        cell.backgroundColor = bgClr[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}


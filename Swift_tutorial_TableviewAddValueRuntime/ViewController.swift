//
//  ViewController.swift
//  Swift_tutorial_TableviewAddValueRuntime
//
//  Created by Rajendran Eshwaran on 5/24/18.
//  Copyright © 2018 RG Group of Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource ,UITableViewDelegate  , UITextViewDelegate {
   

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var insertTxtValue: UITextView!
    
    var valuesArray = ["One", "Two", "Three"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self;
        tableView.dataSource = self;
        insertTxtValue.delegate = self;
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valuesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: "custemCell") as! TableViewCell
        cell.valueLbl.text = valuesArray[indexPath.row]
        
        return cell
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        insertTxtValue.isUserInteractionEnabled = true;
        insertTxtValue.text = ""
        insertTxtValue.becomeFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        if(text == "\n")
        {
            view.endEditing(true)
            return false
        }
        else
        {
            return true
        }
    }
    
    @IBAction func addValueBtn(_ sender: UIButton) {
        
        if(insertTxtValue.text != nil && insertTxtValue.text != "")
        {
        valuesArray.append(insertTxtValue.text)
        
        tableView .reloadData()
            
        insertTxtValue.text = ""
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


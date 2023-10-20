//
//  ViewController.swift
//  newproject
//
//  Created by selsabil mohamed on 10/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var name: UITextField!
    
    //for test, you need to have 1 more text field and 1 label. button remains the same. you will also be implementing one more let statement for this text field and button
    
    // for project, you can put background and photo, you just have to organize a little more.
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey:"names")
        let storedBirthday = UserDefaults.standard.object(forKey:"birthday")
        if let newName = storedName as? String{
            label.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            label2.text = newBirthday
        }
            
        }
    
    @IBAction func button(_ sender: Any) {
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(name.text!, forKey: "birthday")
        label.text = "Name: \(nameText.text!)"
        label2.text = "Birthday: \(name.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name" )
            let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
            if (storedName as? String) != nil{
                UserDefaults.standard.removeObject(forKey: "name" )
                label.text = "Name: "
            }
            
            if (storedBirthday as? String) != nil{
                UserDefaults.standard.removeObject(forKey: "birthday" )}
                label2.text = "Birthday: " }
            }

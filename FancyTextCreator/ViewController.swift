//
//  ViewController.swift
//  FancyTextCreator
//
//  Created by Jaime Jazareno III on 21/12/2017.
//  Copyright © 2017 Jaime Jazareno III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadowButton: UIButton!
    
    var fontSize: CGFloat = 30
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func red(_ sender: Any) {
        label.textColor = UIColor.red
    }
    
    
    @IBAction func blue(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    
    @IBAction func green(_ sender: Any) {
        label.textColor = UIColor.init(red: 24.0/255.0, green: 174.0/255.0, blue: 55.0/255.0, alpha: 1.0)
    }
    
    @IBAction func font1(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    @IBAction func font4(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        if (state == false){
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            shadowButton.setTitle("Remove Shadow", for: UIControlState.normal)
            state = true;
        }
        else{
            label.layer.shadowOpacity = 0
            shadowButton.setTitle("Set Shadow", for: UIControlState.normal)
            state = false;
        }

    }
    
    
    @IBAction func small(_ sender: Any) {
        fontSize = 30
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        fontSize = 50
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
}

